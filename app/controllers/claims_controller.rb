class ClaimsController < ApplicationController
  def search
    claims=Claim.all
    time=claims.count-2
    about='{"claim":['
    for num in 0..time do

      claim=claims[num]
      id=claim.id
      content=claim.content
      sex=claim.sex
      age=claim.age
      submit=claim.submit
      created_at=claim.created_at

      about+="{'id':#{id},'content':'#{content}','sex':#{sex},'age':#{age},'submit':#{submit}},"
      #about+="{"+'"content":'+"'#{content}'"+',"sex":'+sex.to_s+',"age":'+age.to_s+',"submit":'+submit.to_s+"},"
    end
    claim=claims[claims.count-1]
    id=claim.id
    content=claim.content
    sex=claim.sex
    age=claim.age
    submit=claim.submit
    created_at=claim.created_at
    #about+='{"content":'+"'#{content}'"+',"sex":'+sex.to_s+',"age":'+age.to_s+',"submit":'+submit.to_s+"}"
    about+="{'id':#{id},'content':'#{content}','sex':#{sex},'age':#{age},'submit':#{submit}}"
    about+="]}"
    render :json=>about

  end

  def comment
    claim_id=params[:id]
    comment=Comment.find_by(claim_id:claim_id)
    user_name=comment.user_name
    content=comment.content


    about="{claim:[{'user_name':#{user_name},'content':'#{content}'}]}"
    render :json=>about

  end

end
