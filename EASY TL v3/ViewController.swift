//
//  ViewController.swift
//  EASY TL v3
//
//  Created by User on 9/26/19.
//  Copyright © 2019 Easy Traffic Laws. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var topicHeader: UILabel!
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var startTest: UIButton!
    @IBOutlet weak var toTest: UIButton!
    @IBOutlet weak var topic: UITextView!
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var topic2: UIButton!
    
    func buttonsHide(){
        header.isHidden = true
        b1.isHidden = true
        b2.isHidden = true
        b3.isHidden = true
        b4.isHidden = true
        b5.isHidden = true
        b6.isHidden = true
    }
    
    func topicAppear(){
        topicHeader.isHidden = false
        topic.isHidden = false
        topic.isEditable = false
        topic.isScrollEnabled = true
        backButton.isHidden = false
    }
    
    var topicNum: Int = 0
    
    @IBAction func handle1Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        toTest.isHidden = false
        topicNum = 1;
        print(topicNum)
        topicHeader.text = "Начало движения"
        topic.text = "Всегда делай это: \n -убедись, что твои действия будут безопасны и не создадут препятствий или опасности другим участникам движения (вообще всегда, не только в вождении)!\n -не будь глупцом, уступи дорогу пешеходам и транспортным средствам при выезде из жилой зоны, дворов, мест стоянки! \nсъезжая же с дороги уступи дорогу велосипедистам и пешеходам, направление движения которых ты пересекаешь!\n -если из пункта 2 и 3 не понятно, то знай - придется уступать дорогу, и при перестроении тем машинам, что движутся в попутном направлении по той полосе, на которую ты намерен перестроиться - тоже:)\n -поворачиваешь? даже если это “поворот не туда” - заблаговременно займи соответствующее крайнее положение на проезжей части, предназначенной для движения в этом направлении!\n -дорогой друг, поворачивай так, чтобы при выезде с пересечения проезжих частей твоя машина не оказалась на встречке :) -выезд с перекрестка, где организованно круговое движение можешь осуществлять с любой полосы, если направление движения не определено дорожными знаками или разметкой"
    }
    
    @IBAction func handle2Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 2;
        topic2.isHidden = false
        topicHeader.text = "Обгон"
        topic.text = "Продолжим. Мы бы советовали прислушаться к следующим правилам обгона: \n - убедись в том, что ни один водитель за тобой не начал обгона \n - убедись в том, водитель впереди не подал сигнал поворота, встречная полоса свободна и что после обгона он сможет вернуться на свою полосу не создав препятствий обгоняемому транспортному средству \n - во время обгона можно остаться на встречной полосе, если по возвращении на свою полосу придется снова начать обгон \n - не препятствуй обгону путем повышения скорости движения или как-либо иначе! у тебя в детстве было мало грустно закончившихся гонок? :) \n - если дорожная обстановка не позволяет осуществить обгон - не геройствуй, просто двигайся как можно правее и при необходимости пропусти других участников движения!\n Не обгоняй на: \n - на перекрестке; \n - на ж/д переездах (+100 м перед ними); \n -ближе чем за 50 м перед пешеходным переходом в населенном пункте и 100 м — вне населенного пункта; \n - в конце подъема, в тоннелях, на мостах, эстакадах, путепроводах, крутых поворотах и других участках дорог с ограниченным обзором или в условиях недостаточной видимости"
    }
    
    
    @IBAction func handle3Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 3;
        topicHeader.text = "Остановка и стоянка"
        topic.text = "Ого! Ну ты прямо бьешь рекорды по темам! \n Сейчас будем замедляться и говорить о стоянке. \n Помни:\n - останавливайся только в специально отведенных для этого местах; \n - если ты не нашел таких мест - можешь остановиться возле правого края проезжей части; \n - можешь останавливаться и на левой стороне дороги с ОДНОСТОРОННИМ движением; \n- мы бы не советовали останавливаться у разделительной полосы; \n - можешь поставить свой суперкар под углом к краю проезжей части там, где  это не будет препятствовать движению других транспортных средств. \n - не провоцируй органы, не становись во втором ряду на проезжей части; \n - возле тротуаров или других мест с пешеходным движением ставить транспортные средства под углом разрешается только передней частью, а на подъемах - только задней частью; \n - можешь остановиться слева на трамвайной колее только для выполнения правил ПДД; \n - а вот на колее справа на проезжей части еще и для посадки или высадки пассажиров; \n\n НЕТ ОСТАНОВКАМ: \n на железнодорожных переездах;\n на эстакадах, мостах, путепроводах и под ними, а также в туннелях; \n на пешеходных переходах и ближе 10 м от них с обеих сторон, кроме случаев предоставления преимущества в движении; \n на перекрестках и ближе 10 м от края пересекаемой проезжей части"
    }
    
    
    @IBAction func handle4click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 4;
        topicHeader.text = "Проезд перекрестков"
        topic.text = "Перекресток? Направо пойдешь, налево пойдешь, прямо пойдешь..\n Ой да ладно тебе, давай рулить!\n Важно:\n - перекресток, где есть светофор или регулировщик, логично, является регулируемым;\n - нерегулируемый он в случае выключения светофора или его работы в режиме мигания сигнала желтого цвета и отсут­ствия регулировщика, как ты уже мог понять;\n - всегда уступай дорогу пешеходам, да, на перекрестках тоже!\n- остановись так, чтобы светофор был в поле твоего зрения, ну а если его нет - в безопасной дистанции от тротуара и пешеходов;\n - если появилась пробка - не выезжай на перекресток, не усугубляй ситуацию!\n - уступи дорогу всем, кто завершает маневр;\n- поворачивая налево или разворачиваясь при зеле­ном сигнале основного светофора, уступи до­рогу трамваю попутного направления;\n- при повороте по стрелке светофора включенной в дополнительной секции одновременно с желтым или красным, ус­тупи дорогу транспортным средствам;\n  - при повороте по зеленой стрелке на табличке займи край­нюю правую (левую) полосу движения и уступи до­рогу транспортным средствам и пешеходам;\n - на перекрестке со свето­фором с дополнительной секцией, если ты находишься на полосе, с которой производится поворот, продолжай движение в направлении включенной стрелки, если твоя остановка препятствует повороту транспортных средств, стоящих за ним в этом ряду;"
    }
    
    @IBAction func handle5Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicNum = 5;
        topicHeader.text = "Проезд переходов и остановок"
        topic.text = "Не забывай об этом (если хочешь жить):\n что ж, начнем с того, что тебе придется оставить людей на пешеходном переходе в целости и сохранности. Уменьшай скорость, пропускай людей и просто читай дальше;\n а, точно: первое правило касается и регулируемых и нерегулируемых пешеходных переходов;\n  всегда держи дистанцию, цеплять своей тачкой нужно не в буквальном смысле пешеходов на переходе;\n посмотри на соседа. он останавливается на переходе? значит, он нормальный чувак. последуй его примеру, возможно, ты кого-то не видишь;\n пропусти слепых, подающих сигнал белой тростью;\n сколько раз ты видел ослов, останавливающихся на переходе за пробкой? не входи в их число! будь умнее и просто остановись до перехода;\n поступило требование остановиться? что уж поделать - остановись! \n впереди трамвай? уступи дорогу тем, кто в него садится, если посадка проводится с проезжей части - целее будешь :) дождись, когда все пешеходы войдут в трамвай! \n видишь опознавательный знак «Дети» на машине, ещё и проблесковые маячками оранжевого цвета и (или) аварийная световая сигнализация включена - уменьши скорость, никогда не знаешь, чего ожидать от детей."
    }
    
    
    @IBAction func handle6Click(_ sender: Any) {
        buttonsHide()
        topicAppear()
        topicHeader.text = "Проезд пешеходных переходов"
        topic.text = "Мы в процессе разработки этой темы!:)"
    }
    
    
    @IBAction func backToTopicList(_ sender: Any) {
        topicHeader.isHidden = true
        topic.isHidden = true
        backButton.isHidden = true
        toTest.isHidden = true
        
        
     header.isHidden = false
        b1.isHidden = false
        b2.isHidden = false
        b3.isHidden = false
        b4.isHidden = false
        b5.isHidden = false
        b6.isHidden = false
        
    }
    @IBOutlet weak var questionText: UITextView!
    
    @IBOutlet weak var arrow1: UIImageView!
    @IBOutlet weak var arrow2: UIImageView!
    @IBOutlet weak var arrow3: UIImageView!
    @IBOutlet weak var arrow4: UIImageView!
    @IBOutlet weak var arrow5: UIImageView!
    
    func setInactive() {
        arrow1.image = UIImage(named: "inactive")
        arrow2.image = UIImage(named: "inactive")
        arrow3.image = UIImage(named: "inactive")
        arrow4.image = UIImage(named: "inactive")
        arrow5.image = UIImage(named: "inactive")
    }
    
    @IBAction func button1(_ sender: Any) {
        setInactive()
        arrow1.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Нажать кнопку старт, прочитать теорию и начать проходить тест по пункту теории. Также вы можете пройти тест из 20 случайных вопросов нажав на кнопку \"Быстрый тест\""
    }
    
    @IBAction func button2(_ sender: Any) {
        setInactive()
        arrow2.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Регистрация нужна для статистики, то есть для  сохранения результатов теста.\n Вы также сможете поделиться своими результатами с друзьями."
    }
    
    
    @IBAction func button3(_ sender: Any) {
        setInactive()
        arrow3.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "Результат сохраняется автоматически, если вы авторизовались."
    }
    
    
    @IBAction func button4(_ sender: Any) {
        setInactive()
        arrow4.image = UIImage(named: "active")
        questionText.isEditable = false
         questionText.text = "Нажимаете на кнопку \"Поделиться\" в профиле и выбираете нужную вам соцсеть."
    }
    
    @IBAction func button5(_ sender: Any) {
        setInactive()
        arrow5.image = UIImage(named: "active")
        questionText.isEditable = false
        questionText.text = "За прохождения теста, соответствующего пункту теории без ошибок, вы получите одну звезду. \n Звезды нельзя купить, только заработать."
    }
    
    
    @IBOutlet weak var answerPoint1: UIImageView!
    @IBOutlet weak var answerPoint2: UIImageView!
    @IBOutlet weak var answer1But: UIButton!
    @IBOutlet weak var answer2But: UIButton!
    @IBOutlet weak var questionLab: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var finishTest1: UILabel!
    
    func startButton(){
        startTest.isHidden = true
        gifView.isHidden = false
        //view1.setAnimationRepeatCount = 1;
        answer1But.isHidden = false
        answer2But.isHidden = false
        answerPoint1.isHidden = false
        answerPoint2.isHidden = false
        questionLab.isHidden = false
        nextQuestion.isHidden = false
    }
    
    let Q1 = [
        "question" : "Въезжая на дорогу по полосе разгона, водитель должен:",
        "answer1" : "Вливаться в транспортный поток,\nуступая дорогу",
        "answer2" : "Вливаться в транспортный поток,\nдругие водители, увидев его,\nдолжны обязательно уступить\nему дорогу",
        "index" : "0"
    ]
    
    let Q2 = [
        "question" : "Разрешено ли в данном месте опасного поворота движение задним ходом?",
        "answer1" : "Разрешено при условии\nобеспечения безопасности\nдорожного движения",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q3 = [
        "question" : "Как разъедутся транспортные средства на лесной дороге?",
        "answer1" : "Белый автомобиль проедет\nпервым, синий - вторым",
        "answer2" : "Синий автомобиль проедет\nпервым, белый - вторым",
        "index" : "0"
    ]
    
    let Q4 = [
        "question" : "Как разъедутся транспортные средства в жилой зоне?",
        "answer1" : "Серый автомобиль проедет\nпервым, желтый - вторым",
        "answer2" : "Желтый автомобиль проедет\nпервым, серый - вторым",
        "index" : "0"
    ]
    
    let Q5 = [
        "question" : "Вы, водитель автомобиля, выезжая с территории жилой зоны, должны уступить дорогу:",
        "answer1" : "Автомобилю и пешеходу",
        "answer2" : "Только пешеходу",
        "index" : "0"
    ]
    
    let Q6 = [
        "question" : "Вы водитель серого автомобиля, решили перестроиться вправо. Ваши действия?",
        "answer1" : "Уступите дорогу водителю белого автомобиля и выполните маневр",
        "answer2" : "Начнете перестроение, потому\nчто имеете преимущество перед\nводителем белого автомобиля",
        "index" : "0"
    ]
    
    var currentQuestionInt = 0
    var rightQs = 0
    
    func gifConstruct1 (gif: String,  repeatcount: Int) {
        let gifname = UIImage.gifImageWithName(gif)
        gifView.animationImages = gifname?.images
        let size = gifname?.images?.count
        gifView.animationDuration = gifname!.duration
        gifView.animationRepeatCount = repeatcount
        gifView.startAnimating()
        gifView.image = gifname?.images?[size! - 1]
    }
    @IBAction func startTest(_ sender: Any) {
        startButton()
        gifConstruct1(gif: "q0",repeatcount: 3)
        questionLab.text = Q1["question"]
        answer1But.setTitle(Q1["answer1"], for: .normal)
        answer2But.setTitle(Q1["answer2"], for: .normal)
    }
    
    
    @IBAction func answer1Click(_ sender: Any) {
        answerPoint1.image = UIImage(named: "active")
        answer2But.isEnabled = false
        
        switch currentQuestionInt {
        case 0:
            gifConstruct1(gif: "q0-a1",repeatcount: 1)
            rightQs = rightQs + 1
            break
            
        case 1:
            gifConstruct1(gif: "q1-a0",repeatcount: 1)
            break
            
        case 2:
            gifConstruct1(gif: "q2-a1",repeatcount: 1)
            rightQs = rightQs + 1
            break
            
        case 3:
            gifConstruct1(gif: "q3-a0",repeatcount: 1)
             rightQs = rightQs + 1
            break
            
        case 4:
            gifConstruct1(gif: "q4-a1",repeatcount: 1)
            rightQs = rightQs + 1
            break
        case 5:
            gifConstruct1(gif: "q6-a1",repeatcount: 1)
            rightQs = rightQs + 1
            break
        default:
            break
        }
    }
    
    @IBAction func answer2Click(_ sender: Any) {
        answerPoint2.image = UIImage(named: "active")
        answer1But.isEnabled = false
        
        switch currentQuestionInt {
            
        case 0:
            gifConstruct1(gif: "q0-a0",repeatcount: 1)
            break
            
        case 1:
            gifConstruct1(gif: "q1-a1",repeatcount: 1)
            rightQs = rightQs + 1
            break
            
        case 2:
            gifConstruct1(gif: "q2-a0",repeatcount: 1)
            break
            
        case 3:
            gifConstruct1(gif: "q3-a1",repeatcount: 1)
            break
            
        case 4:
            gifConstruct1(gif: "q4-a0",repeatcount: 1)
            break
            
        case 5:
            gifConstruct1(gif: "q6-a0",repeatcount: 1)
            break
        default:
            break
        }
    }
    
    func refreshButtons() {
        answerPoint1.image = UIImage(named: "inactive")
        answerPoint2.image = UIImage(named: "inactive")
        answer1But.isEnabled = true
        answer2But.isEnabled = true
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        currentQuestionInt = currentQuestionInt + 1
        
        switch currentQuestionInt {
        case 1:
            refreshButtons()
            gifConstruct1(gif: "q1",repeatcount: 2)
            questionLab.text = Q2["question"]
            answer1But.setTitle(Q2["answer1"], for: .normal)
            answer2But.setTitle(Q2["answer2"], for: .normal)
            break
            
        case 2:
            refreshButtons()
            gifConstruct1(gif: "q2",repeatcount: 2)
            questionLab.text = Q3["question"]
            answer1But.setTitle(Q3["answer1"], for: .normal)
            answer2But.setTitle(Q3["answer2"], for: .normal)
            break
            
        case 3:
            refreshButtons()
            gifConstruct1(gif: "q3",repeatcount: 2)
            questionLab.text = Q4["question"]
            answer1But.setTitle(Q4["answer1"], for: .normal)
            answer2But.setTitle(Q4["answer2"], for: .normal)
            break
        case 4:
            refreshButtons()
            gifConstruct1(gif: "q4",repeatcount: 2)
            questionLab.text = Q5["question"]
            answer1But.setTitle(Q5["answer1"], for: .normal)
            answer2But.setTitle(Q5["answer2"], for: .normal)
            break
        case 5:
            refreshButtons()
            gifConstruct1(gif: "q6",repeatcount: 2)
            questionLab.text = Q6["question"]
            answer1But.setTitle(Q6["answer1"], for: .normal)
            answer2But.setTitle(Q6["answer2"], for: .normal)
            nextQuestion.setTitle("Закончить тест", for: .normal)
            break
        case 6:
            finishTest1.isHidden = false
            gifView.isHidden = true
            questionLab.isHidden = true
            answerPoint1.isHidden = true
            answerPoint2.isHidden = true
            answer1But.isHidden = true
            answer2But.isHidden = true
            nextQuestion.isHidden = true
            finishTest1.text = "Результаты вашего теста:\n" + String(rightQs) + "+"
            break
        default:
            break
        }
    }
    
    //TEST 2
    
    @IBOutlet weak var questionTest2: UILabel!
    @IBOutlet weak var gifTest2: UIImageView!
    @IBOutlet weak var point1Test2: UIImageView!
    @IBOutlet weak var point2Test2: UIImageView!
    @IBOutlet weak var answer1Test2: UIButton!
    @IBOutlet weak var answer2Test2: UIButton!
    @IBOutlet weak var nextQTest2: UIButton!
    @IBOutlet weak var resultTest2: UILabel!
    @IBOutlet weak var startTest2: UIButton!
    @IBOutlet weak var viewTest2: UIView!
    
    var currentQuestion2 = 7
    var rightQs2 = 0
    
    func showTest2() {
        startTest2.isHidden = true
        questionTest2.isHidden = false
        gifTest2.isHidden = false
        viewTest2.isHidden = false
        point1Test2.isHidden = false
        point2Test2.isHidden = false
        answer1Test2.isHidden = false
        answer2Test2.isHidden = false
        nextQTest2.isHidden = false
    }
    
    func gifConstruct2 (gif: String,  repeatcount: Int) {
        let gifname = UIImage.gifImageWithName(gif)
        gifTest2.animationImages = gifname?.images
        let size = gifname?.images?.count
        gifTest2.animationDuration = gifname!.duration
        gifTest2.animationRepeatCount = repeatcount
        gifTest2.startAnimating()
        gifTest2.image = gifname?.images?[size! - 1]
    }
    
    @IBAction func startTest2(_ sender: Any) {
        showTest2()
        gifConstruct2(gif: "q7",repeatcount: 2)
        questionTest2.text = Q7["question"]
        answer1Test2.setTitle(Q7["answer1"], for: .normal)
        answer2Test2.setTitle(Q7["answer2"], for: .normal)
    }
    
    let Q7 = [
        "question" : "Разрешен ли обгон водителю красного автомобиля в этой ситуации?",
        "answer1" : "Разрешен",
        "answer2" : "Запрещен",
        "index" : "1"
    ]
    
    let Q8 = [
        "question" : "Разрешено ли водителю белого автомобиля выполнить обгон в этой ситуации?",
        "answer1" : "Разрешено",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q9 = [
        "question" : "Разрешен ли обгон в этой ситуации?",
        "answer1" : "Разрешен, если скорость обгоняемого автомобиля составляет менее 30 км/ч",
        "answer2" : "Запрещен",
        "index" : "1"
    ]
    
    let Q10 = [
        "question" : "Разрешено ли водителю белого автомобиля выполнить обгон трактора в данной ситуации?",
        "answer1" : "Разрешено, при этом он должен убедиться в безопасности маневра",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q11 = [
        "question" : "Как должен поступить водитель синего автомобиля, который движется прямо, в данной ситуации?",
        "answer1" : "Остановиться перед перекрестком и дождаться, пока фиолетовый автомобиль повернет налево.",
        "answer2" : "Объехать фиолетовый автомобиль справа, обеспечив безопасность движения",
        "index" : "1"
    ]
    
    @IBAction func answer1Test2(_ sender: Any) {
        point1Test2.image = UIImage(named: "active")
        answer2Test2.isEnabled = false
        
        switch currentQuestion2 {
        case 7:
            gifConstruct2(gif: "q7-a1",repeatcount: 1)
            break
            
        case 8:
            gifConstruct2(gif: "q8-a1",repeatcount: 1)
            break
            
        case 9:
            gifConstruct2(gif: "q9-a1",repeatcount: 1)
            break
            
        case 10:
            gifConstruct2(gif: "q10-a1",repeatcount: 1)
            break
            
        case 11:
            gifConstruct2(gif: "q11-a0",repeatcount: 1)
            break
       
        default:
            break
        }
    }
    
    @IBAction func answer2Test2(_ sender: Any) {
        point2Test2.image = UIImage(named: "active")
        answer1Test2.isEnabled = false
        
        switch currentQuestion2 {
         case 7:
            gifConstruct2(gif: "q7-a0",repeatcount: 1)
             rightQs2 = rightQs2 + 1
             break
             
         case 8:
             gifConstruct2(gif: "q8-a0",repeatcount: 1)
             rightQs2 = rightQs2 + 1
             break
             
         case 9:
            gifConstruct2(gif: "q9-a0",repeatcount: 1)
             rightQs2 = rightQs2 + 1
             break
             
         case 10:
              gifConstruct2(gif: "q10-a0",repeatcount: 1)
              rightQs2 = rightQs2 + 1
             break
             
         case 11:
             gifConstruct2(gif: "q11-a1",repeatcount: 1)
             rightQs2 = rightQs2 + 1
             break
        
         default:
             break
         }
    }
    
    func refreshButtons2() {
        point1Test2.image = UIImage(named: "inactive")
        point2Test2.image = UIImage(named: "inactive")
        answer1Test2.isEnabled = true
        answer2Test2.isEnabled = true
    }
    
    
    @IBAction func nextQTest2(_ sender: Any) {
        currentQuestion2 = currentQuestion2 + 1
        
        switch currentQuestion2 {
        case 8:
            refreshButtons2()
            gifConstruct2(gif: "q8",repeatcount: 2)
            questionTest2.text = Q8["question"]
            answer1Test2.setTitle(Q8["answer1"], for: .normal)
            answer2Test2.setTitle(Q8["answer2"], for: .normal)
            break
            
        case 9:
            refreshButtons2()
            gifConstruct2(gif: "q9",repeatcount: 2)
            questionTest2.text = Q9["question"]
            answer1Test2.setTitle(Q9["answer1"], for: .normal)
            answer2Test2.setTitle(Q9["answer2"], for: .normal)
            break
        case 10:
            refreshButtons2()
            gifConstruct2(gif: "q10",repeatcount: 2)
            questionTest2.text = Q10["question"]
            answer1Test2.setTitle(Q10["answer1"], for: .normal)
            answer2Test2.setTitle(Q10["answer2"], for: .normal)
            break
        case 11: 
            refreshButtons2()
            gifConstruct2(gif: "q11",repeatcount: 2)
            questionTest2.text = Q11["question"]
            answer1Test2.setTitle(Q11["answer1"], for: .normal)
            answer2Test2.setTitle(Q11["answer2"], for: .normal)
            nextQTest2.setTitle("Закончить тест", for: .normal)
            break
        case 12:
            questionTest2.isHidden = true
            gifTest2.isHidden = true
            point1Test2.isHidden = true
            point2Test2.isHidden = true
            answer1Test2.isHidden = true
            answer2Test2.isHidden = true
            nextQTest2.isHidden = true
            viewTest2.isHidden = true
            resultTest2.isHidden = false
            resultTest2.text = "Результаты вашего теста:\n" + String(rightQs2) + "+"
        default:
            break
        }
    }
    
    //QUICK TEST
    let Q12 = [
        "question" : "Имеет ли право водитель остановиться в этом месте?",
        "answer1" : "Имеет право только для посадки (высадки) пассажиров",
        "answer2" : "Не имеет права",
        "index" : "1"
    ]
    
    let Q13 = [
        "question" : "На каком из мест водителю легкового автомобиля разрешено остановиться?",
        "answer1" : "На месте А",
        "answer2" : "На месте Б",
        "index" : "0"
    ]
    
    let Q14 = [
        "question" : "В каком из мест водителю разрешено выполнить остановку?",
        "answer1" : "На месте А и Б",
        "answer2" : "На месте А",
        "index" : "1"
    ]
    
    let Q15 = [
        "question" : "Разрешено ли водителю остановиться в этом месте?",
        "answer1" : "Разрешено",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q16 = [
        "question" : "Разрешено ли водителю остановиться на путепроводе в этом месте?",
        "answer1" : "Разрешено только для посадки (высадки) пассажиров",
        "answer2" : "Запрещено",
        "index" : "1"
    ]
    
    let Q17 = [
        "question" : "Как должен в данной ситуации поступить водитель белого автомобиля (ожидает включения сигнала светофора для движения прямо)?",
        "answer1" : "Перестроиться в правый ряд",
        "answer2" : "Включить левый указатель поворота, продолжить движение в направлении, указанном стрелкой",
        "index" : "1"
    ]
   
    let Q18 = [
        "question" : "Какая очередность проезда данного перекрестка?",
        "answer1" : "Зеленый, белый автомобиль",
        "answer2" : "Белый, зеленый автомобиль",
        "index" : "1"
    ]
    
    let Q19 = [
        "question" : "Как должен поступить водитель желтого автомобиля в данной ситуации?",
        "answer1" : "Должен проехать первым, поскольку имеет преимущество в движении",
        "answer2" : "Должен уступить дорогу белому автомобилю, потому что он для него помеха справа",
        "index" : "0"
    ]
    
    let Q20 = [
        "question" : "Поворачивая направо, водитель синего автомобиля должен:",
        "answer1" : "Уступить дорогу обоим трамваям",
        "answer2" : "Проехать перекресток первым",
        "index" : "0"
    ]
    
    @IBOutlet weak var qQuick: UILabel!
    @IBOutlet weak var gifQuick: UIImageView!
    @IBOutlet weak var p1Quick: UIImageView!
    @IBOutlet weak var p2Quick: UIImageView!
    @IBOutlet weak var a1Quick: UIButton!
    @IBOutlet weak var a2Quick: UIButton!
    @IBOutlet weak var nextQuick: UIButton!
    @IBOutlet weak var startQuick: UIButton!
    @IBOutlet weak var viewQuick: UIView!
    @IBOutlet weak var finishQuick: UILabel!
    
    var currentQuick = 0
    var rightQuick = 0
    
    func showQuick(){
        startQuick.isHidden = true
        viewQuick.isHidden = false
        qQuick.isHidden = false
        gifQuick.isHidden = false
        p1Quick.isHidden = false
        p2Quick.isHidden = false
        a1Quick.isHidden = false
        a2Quick.isHidden = false
        nextQuick.isHidden = false
    }
    
    func gifQuickConstr (gif: String,  repeatcount: Int) {
        let gifname = UIImage.gifImageWithName(gif)
        gifQuick.animationImages = gifname?.images
        let size = gifname?.images?.count
        gifQuick.animationDuration = gifname!.duration
        gifQuick.animationRepeatCount = repeatcount
        gifQuick.startAnimating()
        gifQuick.image = gifname?.images?[size! - 1]
    }
    
    func refreshButQ() {
        p1Quick.image = UIImage(named: "inactive")
        p2Quick.image = UIImage(named: "inactive")
        a1Quick.isEnabled = true
        a2Quick.isEnabled = true
    }
    
    @IBAction func startQuick(_ sender: Any) {
        showQuick()
        gifQuickConstr(gif: "q0",repeatcount: 1)
        qQuick.text = Q1["question"]
        a1Quick.setTitle(Q1["answer1"], for: .normal)
        a2Quick.setTitle(Q1["answer2"], for: .normal)
    }
    
    @IBAction func a1Quick(_ sender: Any) {
        p1Quick.image = UIImage(named: "active")
        a2Quick.isEnabled = false
        
        switch currentQuick {
            case 0:
               gifQuickConstr(gif: "q0-a1",repeatcount: 1)
               rightQuick += 1
               break
           case 1:
               gifQuickConstr(gif: "q1-a0",repeatcount: 1)
               break
           case 2:
               gifQuickConstr(gif: "q2-a1",repeatcount: 1)
               rightQuick += 1
               break
           case 3:
               gifQuickConstr(gif: "q3-a0",repeatcount: 1)
                rightQuick += 1
               break
           case 4:
               gifQuickConstr(gif: "q4-a1",repeatcount: 1)
               rightQuick += 1
               break
           case 5:
               gifQuickConstr(gif: "q6-a1",repeatcount: 1)
               rightQuick += 1
               //currentQuick = 6
                break
            case 7:
                gifQuickConstr(gif: "q7-a1",repeatcount: 1)
                break
            case 8:
                gifQuickConstr(gif: "q8-a1",repeatcount: 1)
                break
            case 9:
                gifQuickConstr(gif: "q9-a1",repeatcount: 1)
                break
            case 10:
                gifQuickConstr(gif: "q10-a1",repeatcount: 1)
                break
            case 11:
                gifQuickConstr(gif: "q11-a0",repeatcount: 1)
                break
            case 12:
                gifQuickConstr(gif: "q12-a0",repeatcount: 1)
                break
            case 13:
                gifQuickConstr(gif: "q13-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 14:
                gifQuickConstr(gif: "q14-a0",repeatcount: 1)
                break
            case 15:
                gifQuickConstr(gif: "q15-a0",repeatcount: 1)
                break
            case 16:
                gifQuickConstr(gif: "q16-a0",repeatcount: 1)
                break
            case 17:
                gifQuickConstr(gif: "q17-a0",repeatcount: 1)
                break
            case 18:
                gifQuickConstr(gif: "q18-a0",repeatcount: 1)
                break
            case 19:
                gifQuickConstr(gif: "q19-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 20:
                gifQuickConstr(gif: "q20-a1",repeatcount: 1)
                rightQuick += 1
                break
        default:
            break
        }
        
    }
    
    @IBAction func a2Quick(_ sender: Any) {
        p2Quick.image = UIImage(named: "active")
        a1Quick.isEnabled = false
        
        switch currentQuick {
            case 0:
                gifQuickConstr(gif: "q0-a0",repeatcount: 1)
                break
                
            case 1:
                gifQuickConstr(gif: "q1-a1",repeatcount: 1)
                rightQuick += 1
                break
                
            case 2:
                gifQuickConstr(gif: "q2-a0",repeatcount: 1)
                break
                
            case 3:
                gifQuickConstr(gif: "q3-a1",repeatcount: 1)
                break
                
            case 4:
                gifQuickConstr(gif: "q4-a0",repeatcount: 1)
                break
                
            case 5:
                gifQuickConstr(gif: "q6-a0",repeatcount: 1)
                //currentQuick = 6
                break
            case 7:
               gifQuickConstr(gif: "q7-a0",repeatcount: 1)
                rightQuick += 1
                break
                
            case 8:
                gifQuickConstr(gif: "q8-a0",repeatcount: 1)
                rightQuick += 1
                break
                
            case 9:
               gifQuickConstr(gif: "q9-a0",repeatcount: 1)
                rightQuick += 1
                break
                
            case 10:
                 gifQuickConstr(gif: "q10-a0",repeatcount: 1)
                 rightQuick += 1
                break
                
            case 11:
                gifQuickConstr(gif: "q11-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 12:
                gifQuickConstr(gif: "q12-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 13:
                 gifQuickConstr(gif: "q13-a0",repeatcount: 1)
                break
            case 14:
                gifQuickConstr(gif: "q14-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 15:
                gifQuickConstr(gif: "q15-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 16:
                gifQuickConstr(gif: "q16-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 17:
                gifQuickConstr(gif: "q17-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 18:
                gifQuickConstr(gif: "q18-a1",repeatcount: 1)
                rightQuick += 1
                break
            case 19:
                gifQuickConstr(gif: "q19-a0",repeatcount: 1)
                break
            case 20:
                gifQuickConstr(gif: "q20-a0",repeatcount: 1)
            break
            default:
                break
        }
        
    }
    
    
    
    
    @IBAction func nextQuick(_ sender: Any) {
        currentQuick += 1
        
        switch currentQuick {
        case 1:
           refreshButQ()
            gifQuickConstr(gif: "q1",repeatcount: 1)
            qQuick.text = Q2["question"]
            a1Quick.setTitle(Q2["answer1"], for: .normal)
            a2Quick.setTitle(Q2["answer2"], for: .normal)
            break
            
        case 2:
            refreshButQ()
            gifQuickConstr(gif: "q2",repeatcount: 1)
            qQuick.text = Q3["question"]
            a1Quick.setTitle(Q3["answer1"], for: .normal)
            a2Quick.setTitle(Q3["answer2"], for: .normal)
            break
            
        case 3:
            refreshButQ()
            gifQuickConstr(gif: "q3",repeatcount: 1)
            qQuick.text = Q4["question"]
            a1Quick.setTitle(Q4["answer1"], for: .normal)
            a2Quick.setTitle(Q4["answer2"], for: .normal)
            break
        case 4:
            refreshButQ()
            gifQuickConstr(gif: "q4",repeatcount: 1)
            qQuick.text = Q5["question"]
            a1Quick.setTitle(Q5["answer1"], for: .normal)
            a2Quick.setTitle(Q5["answer2"], for: .normal)
            break
        case 5:
            refreshButQ()
            currentQuick = 6
            gifQuickConstr(gif: "q6",repeatcount: 1)
            qQuick.text = Q6["question"]
            a1Quick.setTitle(Q6["answer1"], for: .normal)
            a2Quick.setTitle(Q6["answer2"], for: .normal)
            break
        case 7:
            refreshButQ()
            gifQuickConstr(gif: "q7",repeatcount: 1)
            qQuick.text = Q7["question"]
            a1Quick.setTitle(Q7["answer1"], for: .normal)
            a2Quick.setTitle(Q7["answer2"], for: .normal)
        case 8:
            refreshButQ()
            gifQuickConstr(gif: "q8",repeatcount: 1)
            qQuick.text = Q8["question"]
            a1Quick.setTitle(Q8["answer1"], for: .normal)
            a2Quick.setTitle(Q8["answer2"], for: .normal)
            break
            
        case 9:
            refreshButQ()
            gifQuickConstr(gif: "q9",repeatcount: 1)
            qQuick.text = Q9["question"]
            a1Quick.setTitle(Q9["answer1"], for: .normal)
            a2Quick.setTitle(Q9["answer2"], for: .normal)
            break
        case 10:
            refreshButQ()
            gifQuickConstr(gif: "q10",repeatcount: 1)
            qQuick.text = Q10["question"]
            a1Quick.setTitle(Q10["answer1"], for: .normal)
            a2Quick.setTitle(Q10["answer2"], for: .normal)
            break
        case 11:
            refreshButQ()
            gifQuickConstr(gif: "q11",repeatcount: 1)
            qQuick.text = Q11["question"]
            a1Quick.setTitle(Q11["answer1"], for: .normal)
            a2Quick.setTitle(Q11["answer2"], for: .normal)
            break
        case 12:
            refreshButQ()
            gifQuickConstr(gif: "q12",repeatcount: 1)
            qQuick.text = Q12["question"]
            a1Quick.setTitle(Q12["answer1"], for: .normal)
            a2Quick.setTitle(Q12["answer2"], for: .normal)
            break
        case 13:
            refreshButQ()
            gifQuickConstr(gif: "q13",repeatcount: 1)
            qQuick.text = Q13["question"]
            a1Quick.setTitle(Q13["answer1"], for: .normal)
            a2Quick.setTitle(Q13["answer2"], for: .normal)
            break
        case 14:
            refreshButQ()
            gifQuickConstr(gif: "q14",repeatcount: 1)
            qQuick.text = Q14["question"]
            a1Quick.setTitle(Q14["answer1"], for: .normal)
            a2Quick.setTitle(Q14["answer2"], for: .normal)
            break
        case 15:
           refreshButQ()
           gifQuickConstr(gif: "q15",repeatcount: 1)
           qQuick.text = Q15["question"]
           a1Quick.setTitle(Q15["answer1"], for: .normal)
           a2Quick.setTitle(Q15["answer2"], for: .normal)
           break
        case 16:
            refreshButQ()
            gifQuickConstr(gif: "q16",repeatcount: 1)
            qQuick.text = Q16["question"]
            a1Quick.setTitle(Q16["answer1"], for: .normal)
            a2Quick.setTitle(Q16["answer2"], for: .normal)
            break
        case 17:
            refreshButQ()
            gifQuickConstr(gif: "q17",repeatcount: 1)
            qQuick.text = Q17["question"]
            a1Quick.setTitle(Q17["answer1"], for: .normal)
            a2Quick.setTitle(Q17["answer2"], for: .normal)
            break
        case 18:
            refreshButQ()
            gifQuickConstr(gif: "q18",repeatcount: 1)
            qQuick.text = Q18["question"]
            a1Quick.setTitle(Q18["answer1"], for: .normal)
            a2Quick.setTitle(Q18["answer2"], for: .normal)
            break
        case 19:
            refreshButQ()
            gifQuickConstr(gif: "q19",repeatcount: 1)
            qQuick.text = Q19["question"]
            a1Quick.setTitle(Q19["answer1"], for: .normal)
            a2Quick.setTitle(Q19["answer2"], for: .normal)
            break
        case 20:
            refreshButQ()
            gifQuickConstr(gif: "q20",repeatcount: 1)
            qQuick.text = Q20["question"]
            a1Quick.setTitle(Q20["answer1"], for: .normal)
            a2Quick.setTitle(Q20["answer2"], for: .normal)
            nextQuick.setTitle("Закончить тест", for: .normal)
            break
        case 21:
            viewQuick.isHidden = false
            qQuick.isHidden = true
            gifQuick.isHidden = true
            p1Quick.isHidden = true
            p2Quick.isHidden = true
            a1Quick.isHidden = true
            a2Quick.isHidden = true
            nextQuick.isHidden = true
            finishQuick.isHidden = false
            finishQuick.text = "Результаты вашего теста:\n" + String(rightQuick) + "+"
            break
        default:
            break
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

