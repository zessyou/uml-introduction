@startuml ホテル予約
hide footbox
participant "controller:データ更新コントローラ" as controller
participant "hotel:ホテル" as hotel
participant ":予約" as entity


activate controller
    controller -> hotel : 1:予約操作を呼び出す()
activate hotel
    create entity
    hotel ->  entity : 1.1:作成()
    
    hotel -> entity : 1.2:予約登録操作を呼び出す()
    hotel <<-- entity : 予約登録操作
    deactivate entity

    controller <<-- hotel: 予約操作
deactivate hotel

deactivate controller
@enduml