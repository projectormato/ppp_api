class LessonQueue < ApplicationRecord
  # lesson_idが渡されて、そのレッスンの開始を待機しているユーザーがいればtokenを返す。そうでなければnilを返す
  def self.get_peer_token(lesson_id)
    queue = self.find_by(lesson_id: lesson_id)
    if queue then
      # peer_tokenがあればそのtokenを返してqueueから削除する
      queue.destroy
      return queue.peer_token
    else
      return nil
    end
  end
end
