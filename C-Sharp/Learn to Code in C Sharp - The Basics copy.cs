using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Everything : MonoBehaviour
{


    /*
    Learn To Code In C# (C Sharp),
    For Beginners
    */


    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    // Variables and Comments
    double mana = 15.5;

    float speed = 1.4f;

    int health = 100;

    string playerName = "W";

    bool isDead = false;

    char oneChar = 'a';

    // a comment here
    private void Start()
    {

    }

    /*

    Anything you can write

    */

    // Different Debug Tools
    private void Start()
    {

        print("this is from PRINT");

        Debug.Log("this is from DEBUG.LOG");

    }

    // Grouping Variables in Debug.Log and Other Variables
    private void Start()
    {

        float a = 20;
        float b = 7;
        float c = a * b;

        string name = "Carl";
        string lastName = "Florian";

        string fullName = name + " " + lastName;

        Debug.Log(fullName);

        Debug.Log(a + " * " + b + " = " + c);

    }

    // Using Functions w/ and w/out Parameters
    private void Start()
    {

        CalculateTwoNumbers()
        CalculateTwoNumbers(30, 22);

        float sum = ReturnTwoNumbers();

        Debug.Log("The sum is " + sum);

        Debug.Log("The sum is: " + ReturnTwoNumbers(10, 20));

    }

    // a function that doesn't return a value and doesn't take parameters
    void CalculateTwoNumbers()
    {

        float a = 10;
        float b = 12;
        float c = a + b;

        Debug.Log("The sum of a and b is: " + c);

    }

    // a function that doesn't return a value but takes parameters
    void CalculateTwoNumbers(float a, float b)
    {
        Debug.Log("The sum of a and b is: " + (a + b));
    }

    float ReturnTwoNumbers()
    {
        return 20 + 30;
    }

    float ReturnTwoNumbers(float a, float b)
    {
        return a + b;
    }

    // Conditions and/or and if Statements
    private void Start()
    {

        float health = 100;

        // If one is true, the condition breaks and chooses
        // the one that's true
        switch (health)
        {

            case 100:
                Debug.Log("Health is 100");
                break;

            case 50:
                Debug.Log("Health is 50");
                break;

            case 0:
                Debug.Log("Health is 0");
                break;

            default:
                Debug.Log("Health is neither of the values above");
                break;

        }

        if (health == 0)
        {
            // if health is less than zero, then condition is true
            // code that is here will be executed
            Debug.Log("Health is 0 player has died");
        }
        else if (health < 50)
        {
            Debug.Log("Health is less than 50 unlock some power for player");
        }
        else
        {
            Debug.Log("player has health greater than 50");
        }

    }

    // Loops
    private void Start()
    {

        for (int i = 0; i < 10; i++)
        {
            Debug.Log("The value of i: " + i);
        }

        int a = 0
        a = a + 1;
        // ^ This is the same as the one below
        int a = 0
        a++;


    }

    private void Start()
    {

        int iterationTime = 100;

        for (int i = 0; i < iterationTime; i++)
        {
            Debug.Log("The value of i: " + i);
        }

        int i = 0;

        while (i < 10)
        {
            Debug.Log("The value of i: " + i);
            i++;
        }

        // Check if the function end, otherwise it'll be a neverending
        // loop and can crash the computer
        while (true)
        {
            Debug.Log("The value of i: ");
        }

    }

    // Delays
    private void Start()
    {

        StartCoroutine(ExecuteSomething());

        StartCoroutine("ExecuteSomething");
        StopCoroutine("ExecuteSomething");

    }

    IEnumerator ExecuteSomething()
    {

        yield return new WaitForSeconds(2f);

        yield return new WaitForEndOfFrame();

        Debug.Log("Something is executed");

        yield return new WaitForSeconds(2f);

        // more code

        yield return new WaitForSeconds(2f);

    }

    private void Start()
    {

        StartCoroutine(ExecuteSomething(2));

        StartCoroutine("ExecuteSomething");
        StopCoroutine("ExecuteSomething");

    }

    IEnumerator ExecuteSomething(float time)
    {

        yield return new WaitForSeconds(time);

        Debug.Log("Something is executed");
    }

    private void Start()
    {

        StartCoroutine(ExecuteSomething(2, 3));

        StartCoroutine("ExecuteSomething");
        StopCoroutine("ExecuteSomething");

    }

    IEnumerator ExecuteSomething(int a, int b)
    {

        yield return new WaitForSeconds(2f);

        Debug.Log("Something is executed");
    }

    // Player Classes
    Player warrior;
    Player archer;

    private void Start()
    {

        warrior = new Player(1, 2, "Lizard");
        archer = new Player(20, 30, "Archer");

        warrior.Info();
        archer.Info();

        warrior.Attack();

    }

    Player warrior;
    Player archer;

    private void Start()
    {

        Warrior warrior = new Warrior(3, 5, "Warrior");
        warrior.Info();
        warrior.Attack();
        warrior.ThrowAxe();
        archer.ThrowAxe();

    }

    // awake is the first function that is called
    private void Awake()
    {

    }

    // 2nd function called
    private void OnEnable()
    {

    }

    // 3rd function called
    private void Start()
    {

        //Warrior warrior = new Warrior(3, 5, "Warrior");

        //warrior.Attack();

    }

    private void Update()
    {

    }

    // Using Components Inside Code
    private Rigidbody2D myBody;
    private BoxCollider2D myCollider;
    private AudioSource audioSource;
    private Animator anim;

    private Transform myTransform;

    Player p = new Player();

    // 3rd function called
    private void Start()
    {
        anim = GetComponent<Animator>();

        myBody = GetComponent<Rigidbody2D>();

        audioSource = GetComponent<AudioSource>();
        audioSource.Play();

        myTransform = transform;

        myTransform.position = new Vector3(10, 20, 30);

    }

    // Players and Inheritance and Ways for
    // Variables to Become Public

    // This is its own class called Player, without "monobehaviour"
    private int _health;

    public int Health
    {
        get
        {
            return _health;
        }
        set
        {
            _health = value;
        }
    }

    private int _power;

    public int Power
    {
        get
        {
            return _power;
        }
        set
        {
            _power = value;
        }
    }

    private string _name;

    public string Name
    {
        get
        {
            return _name;
        }
        set
        {
            _name = value;
        }
    }

    public Player() { }

    public Player(int health, int power, string name)
    {

        Health = health;
        Power = power;
        Name = name;
    }

    public virtual void Attack()
    {
        Debug.Log("Player is attacking with fire");
    }

    public void Info()
    {
        Debug.Log("Health is: " + Health);
        Debug.Log("Power is: " + Power);
        Debug.Log("Name is: " + Name);
    }

    // Other way to make a variable public
    public void SetHealth(int health)
    {
        this.health = health;
    }

    public int GetHealth()
    {
        return health;
    }

    // more info
    int health;
    int power;
    string name;

    public Player(int health, int power, string name)
    {

        this.health = health;
        this.power = power;
        this.name = name;
    }

    private void Attack()
    {
        Debug.Log(name + " is attacking");
    }

    public void Info()
    {
        Debug.Log("Health is: " + health);
        Debug.Log("Power is: " + power);
        Debug.Log("Name is: " + name);
    }

    // more info
    int health = 100;
    int power = 50;
    string name = "Warrior";

    public Player()
    {
        Debug.Log("Health is: " + health);
        Debug.Log("Power is: " + power);
        Debug.Log("Name is: " + name);
    }

    // This class inherits from Player, being its child class
    public Warrior(int health, int power, string name)
    {
        Health = health;
        Power = power;
        Name = name;
    }

    public override void Attack()
    {
        Debug.Log("Warrior is attacking with AXE");
    }

    // Finally, This is The Player Movement Class, with MonoBehaviour
    public float speed = 5f;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

        float h = Input.GetAxis("Horizontal");
        float v = Input.GetAxis("Vertical");

        Vector2 pos = transform.position;

        pos.x += h * speed * Time.deltaTime;
        pos.y += v * speed * Time.deltaTime;

        transform.position = pos;

    }

    // Events and Delegates
    /* Delegates > Events > Subscribed/Unsubscribed is the same as
    Company (Newspapers) > Newspaper (Event) > Inform People
	Who Subscribed to Receive the Call */
    // This is the Sender
    public delegate void PlayerDied();
    public static event PlayerDied playerDiedInfo;

    void Start()
    {
        if (playerDiedInfo != null)
        {
            playerDiedInfo();
        }
    }

    // OR much better

    public delegate void PlayerDied();
    public static event PlayerDied playerDiedInfo;

    void Start()
    {   // Execute function after 5 seconds
        Invoke("ExecuteEvent", 5f);
    }

    void ExecuteEvent()
    {
        if (playerDiedInfo != null)
        {
            playerDiedInfo();
        }
    }

    // This is the Receiver
    void Start()
    {
        Sender.playerDiedInfo += PlayerDiedListener;
    }

    // Recomended function to call the event "OnEnable"
    // To Subscribe
    private void OnEnable()
    {
        Sender.playerDiedInfo += PlayerDiedListener;

    }

    // To Unsubscribe
    private void OnDisable()
    {
        Sender.playerDiedInfo -= PlayerDiedListener;
    }

    void PlayerDiedListener()
    {
        print("Event has called this function to execute");
    }



    /*
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    THIS IS THE CODE FOR THE
    MONSTER JUMP GAME
    EVERY SCRIPT INTO ONE
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    */


    // PLAYER MOVEMENT CONTROLS

    [SerializeField]
    private float moveForce = 10f;

    [SerializeField]
    private float jumpForce = 11f;

    private float movementX;

    private Rigidbody2D myBody;

    private SpriteRenderer sr;

    private Animator anim;
    private string WALK_ANIMATION = "Walk";

    private bool isGrounded;
    private string GROUND_TAG = "Ground";

    private string ENEMY_TAG = "Enemy";

    private void Awake()
    {

        myBody = GetComponent<Rigidbody2D>();
        anim = GetComponent<Animator>();

        sr = GetComponent<SpriteRenderer>();

    }

    void Start()
    {

    }

    void Update()
    {

        PlayerMoveKeyboard();
        AnimatePlayer();
        PlayerJump();

    }

    private void FixedUpdate()
    {

    }

    void PlayerMoveKeyboard()
    {

        movementX = Input.GetAxisRaw("Horizontal");

        transform.position += new Vector3(movementX, 0f, 0f) * moveForce * Time.deltaTime;

    }

    void AnimatePlayer()
    {

        // we are going to the right side
        if (movementX > 0)
        {
            anim.SetBool(WALK_ANIMATION, true);
            sr.flipX = false;
        }
        // we are going to the left side
        else if (movementX < 0)
        {
            anim.SetBool(WALK_ANIMATION, true);
            sr.flipX = true;
        }
        else
        {
            anim.SetBool(WALK_ANIMATION, false);
        }
    }

    void PlayerJump()
    {

        if (Input.GetButtonDown("Jump") && isGrounded)
        {
            isGrounded = false;
            myBody.AddForce(new Vector2(0f, jumpForce), ForceMode2D.Impulse);
        }

    }

    private void OnCollisionEnter2D(Collision2D collision)
    {

        if (collision.gameObject.CompareTag(GROUND_TAG))
            isGrounded = true;


        if (collision.gameObject.CompareTag(ENEMY_TAG))
            Destroy(gameObject);


    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag(ENEMY_TAG))
            Destroy(gameObject);
    }



    // CAMERA FOLLOW

    private Transform player;

    private Vector3 tempPos;

    [SerializeField]
    private float minX, maxX;

    // Start is called before the first frame update
    void Start()
    {
        player = GameObject.FindWithTag("Player").transform;
    }

    // Update is called once per frame
    void LateUpdate()
    {

        if (!player)
            return;

        tempPos = transform.position;
        tempPos.x = player.position.x;

        if (tempPos.x < minX)
            tempPos.x = minX;

        if (tempPos.x > maxX)
            tempPos.x = maxX;

        transform.position = tempPos;

    }


    // MONSTER AI

    [HideInInspector]
    public float speed;

    private Rigidbody2D myBody;

    // Start is called before the first frame update
    void Awake()
    {
        myBody = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        myBody.velocity = new Vector2(speed, myBody.velocity.y);
    }


    // MONSTER SPAWNER

    [SerializeField]
    private GameObject[] monsterReference;

    private GameObject spawnedMonster;

    [SerializeField]
    private Transform leftPos, rightPos;

    private int randomIndex;
    private int randomSide;

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(SpawnMonsters());
    }

    IEnumerator SpawnMonsters()
    {

        while (true)
        {

            yield return new WaitForSeconds(Random.Range(1, 5));

            randomIndex = Random.Range(0, monsterReference.Length);
            randomSide = Random.Range(0, 2);

            spawnedMonster = Instantiate(monsterReference[randomIndex]);

            // left side
            if (randomSide == 0)
            {

                spawnedMonster.transform.position = leftPos.position;
                spawnedMonster.GetComponent<Monster>().speed = Random.Range(4, 10);

            }
            else
            {
                // right side
                spawnedMonster.transform.position = rightPos.position;
                spawnedMonster.GetComponent<Monster>().speed = -Random.Range(4, 10);
                spawnedMonster.transform.localScale = new Vector3(-1f, 1f, 1f);

            }

        } // while loop

    }


    // COLLECTOR / DESTROYER

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Enemy") || collision.CompareTag("Player"))
        {
            Destroy(collision.gameObject);
        }
    }


    // MAIN MENU CONTROLLER

    public void PlayGame()
    {

        int selectedCharacter =
            int.Parse(UnityEngine.EventSystems.EventSystem.current.currentSelectedGameObject.name);

        GameManager.instance.CharIndex = selectedCharacter;

        SceneManager.LoadScene("Gameplay");

    }


    // GAMEPLAY UI CONTROLLER

    public void RestartGame()
    {
        //SceneManager.LoadScene("Gameplay");
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void HomeButton()
    {
        SceneManager.LoadScene("MainMenu");
    }


    // GAME MANAGER

    public static GameManager instance;

    [SerializeField]
    private GameObject[] characters;

    private int _charIndex;
    public int CharIndex
    {
        get { return _charIndex; }
        set { _charIndex = value; }
    }

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void OnEnable()
    {
        SceneManager.sceneLoaded += OnLevelFinishedLoading;
    }

    private void OnDisable()
    {
        SceneManager.sceneLoaded -= OnLevelFinishedLoading;
    }

    void OnLevelFinishedLoading(Scene scene, LoadSceneMode mode)
    {

        if (scene.name == "Gameplay")
        {
            Instantiate(characters[CharIndex]);
        }

    }


    // SCORE COUNT

    public Text scoreCount;

    public int SCORE = 0;

    void Start()
    {
        StartCoroutine(PlayerScore(SCORE));
    }

    IEnumerator PlayerScore(int SCORE)
    {

        this.SCORE = SCORE;

        GameObject Plyr = GameObject.FindWithTag("Player");

        while (Plyr != null)
        {

            scoreCount.text = "Score: " + SCORE;

            yield return new WaitForSeconds(1);

            SCORE++;

        }

    }


    // HIGHSCORE "DRAFT"

    public int HIGHSCORE;

    public Text highScoreCount;

    void Start()
    {

        HIGHSCORE = PlayerPrefs.GetInt("HIGHSCORE", HIGHSCORE);

    }

    void Update()
    {

        HighScoreUpdate();

    }

    void HighScoreUpdate()
    {

        if (SCORE > HIGHSCORE)
        {
            HIGHSCORE = SCORE;
            highScoreCount.text = "High Score: " + SCORE;

            PlayerPrefs.SetInt("HIGHSCORE", HIGHSCORE);
            PlayerPrefs.Save();
        }

    }

    /*
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    MONSTER JUMP
    CODE / SCRIPTS
    ENDS HERE
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------
    */




































} // class
