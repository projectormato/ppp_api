class TokensController < ApplicationController
  $tokens = []

  # POST /api/token
  # バグすごそうなので暫定的な処理ということで・・・
  # もっと良く書けたら書きなおして欲しす
  def match
  input = JSON.parse(request.body.read)
  output = ""
  token =  input["user"]["token"]
  if $tokens.include?(token) # 既にtokenがある(２回目以降のアクセス)なら
    token_index = $tokens.index(token)
    unless token_index == $tokens.length-1 # 自分以外のtokenが入っているなら
      output = $tokens[token_index+1] != nil ? $tokens[token_index+1] : "" # 自分の次に入ったtokenを返す
      $tokens.delete($tokens[token_index+1])
      $tokens.delete(token) # 一応消しておく
    end
  else
    if $tokens.length % 2 == 1 # 他に既にtokenが入っているなら
      output = $tokens[-1] # 一番後ろのtokenがペアじゃないはずなので取得
    end
    $tokens.push(token) # 自身を加える
  end
  result = {"tokens" => output} 
  p $tokens
  render json: result
  end

end