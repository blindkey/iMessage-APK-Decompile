.class public Lactivity/RegisterActivity;
.super Lactivity/MyActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/common/SlideButton$OnChangedListener;


# static fields
.field private static final AlREADYREGISTER:I = 0x0

.field private static final NETWORKERR:I = 0x2

.field private static final REGISTERERR:I = 0x3

.field private static final REGISTERSUCC:I = 0x1


# instance fields
.field private EmailAddress:Landroid/widget/EditText;

.field private FirstName:Landroid/widget/EditText;

.field private GetAppleEmail:Z

.field private LastName:Landroid/widget/EditText;

.field private final MSG:I

.field private Password:Landroid/widget/EditText;

.field private Password1:Landroid/widget/EditText;

.field private QuestionAnswer:Landroid/widget/EditText;

.field private SemailAddress:Ljava/lang/String;

.field private SfirstName:Ljava/lang/String;

.field private SlastName:Ljava/lang/String;

.field private Spassword:Ljava/lang/String;

.field private Spassword1:Ljava/lang/String;

.field private Sposition:Ljava/lang/String;

.field private Squestion:Ljava/lang/String;

.field private SquestionAnswer:Ljava/lang/String;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adapterCountry:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private date:Landroid/widget/DatePicker;

.field private day:I

.field private emailAddress:Landroid/widget/TextView;

.field private firstName:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private lastName:Landroid/widget/TextView;

.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnSuccess:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private m_Country:[Ljava/lang/String;

.field private m_Country_Code:[Ljava/lang/String;

.field private m_Questions:[Ljava/lang/String;

.field private m_Spinner:Landroid/widget/Spinner;

.field private m_SpinnerCountry:Landroid/widget/Spinner;

.field private month:I

.field private password:Landroid/widget/TextView;

.field private password1:Landroid/widget/TextView;

.field private questionAnswer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 51
    const/16 v0, 0x12

    iput v0, p0, Lactivity/RegisterActivity;->MSG:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/RegisterActivity;->GetAppleEmail:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    .line 462
    new-instance v0, Lactivity/RegisterActivity$1;

    invoke-direct {v0, p0}, Lactivity/RegisterActivity$1;-><init>(Lactivity/RegisterActivity;)V

    iput-object v0, p0, Lactivity/RegisterActivity;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private EmailAddressSuit()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, -0x1

    .line 350
    iget-object v4, p0, Lactivity/RegisterActivity;->SemailAddress:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 351
    iget-object v4, p0, Lactivity/RegisterActivity;->emailAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    :goto_0
    return v3

    .line 354
    :cond_0
    const-string v4, "^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\\.([a-zA-Z0-9_-])+)+$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 355
    .local v2, p:Ljava/util/regex/Pattern;
    iget-object v4, p0, Lactivity/RegisterActivity;->SemailAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 356
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 357
    .local v0, b:Z
    if-nez v0, :cond_1

    .line 358
    iget-object v4, p0, Lactivity/RegisterActivity;->emailAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v3, p0, Lactivity/RegisterActivity;->emailAddress:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private FirstNameSuit()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lactivity/RegisterActivity;->SfirstName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    iget-object v0, p0, Lactivity/RegisterActivity;->firstName:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Lactivity/RegisterActivity;->firstName:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private LastNameSuit()Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lactivity/RegisterActivity;->SlastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-object v0, p0, Lactivity/RegisterActivity;->lastName:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lactivity/RegisterActivity;->lastName:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Password1Suit()Z
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lactivity/RegisterActivity;->Spassword1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 302
    .local v0, buf:[B
    invoke-direct {p0, v0}, Lactivity/RegisterActivity;->PwSuit([B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lactivity/RegisterActivity;->Spassword1:Ljava/lang/String;

    iget-object v2, p0, Lactivity/RegisterActivity;->Spassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lactivity/RegisterActivity;->password1:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    const/4 v1, 0x1

    .line 308
    :goto_0
    return v1

    .line 307
    :cond_0
    iget-object v1, p0, Lactivity/RegisterActivity;->password1:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private PasswordSuit()Z
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lactivity/RegisterActivity;->Spassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 337
    .local v0, buf:[B
    invoke-direct {p0, v0}, Lactivity/RegisterActivity;->PwSuit([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lactivity/RegisterActivity;->password:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    const/4 v1, 0x1

    .line 343
    :goto_0
    return v1

    .line 342
    :cond_0
    iget-object v1, p0, Lactivity/RegisterActivity;->password:Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private PwSuit([B)Z
    .locals 7
    .parameter "buf"

    .prologue
    .line 314
    array-length v4, p1

    .line 315
    .local v4, len:I
    const/4 v2, 0x0

    .line 316
    .local v2, isint:Z
    const/4 v3, 0x0

    .line 317
    .local v3, islc:Z
    const/4 v1, 0x0

    .line 318
    .local v1, ishc:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 326
    const/16 v5, 0x8

    if-lt v4, v5, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 327
    const/4 v5, 0x1

    .line 329
    :goto_1
    return v5

    .line 319
    :cond_0
    aget-byte v5, p1, v0

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    aget-byte v5, p1, v0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 320
    const/4 v2, 0x1

    .line 318
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    aget-byte v5, p1, v0

    const/16 v6, 0x61

    if-lt v5, v6, :cond_3

    aget-byte v5, p1, v0

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_3

    .line 322
    const/4 v3, 0x1

    goto :goto_2

    .line 323
    :cond_3
    aget-byte v5, p1, v0

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1

    aget-byte v5, p1, v0

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_1

    .line 324
    const/4 v1, 0x1

    goto :goto_2

    .line 329
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private QuestionAnswerSuit()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lactivity/RegisterActivity;->SquestionAnswer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lactivity/RegisterActivity;->questionAnswer:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lactivity/RegisterActivity;->questionAnswer:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lactivity/RegisterActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lactivity/RegisterActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1, p2, p3}, Lactivity/RegisterActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lactivity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lactivity/RegisterActivity;->m_Spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3(Lactivity/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lactivity/RegisterActivity;->Squestion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lactivity/RegisterActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lactivity/RegisterActivity;->m_SpinnerCountry:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5(Lactivity/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lactivity/RegisterActivity;->Sposition:Ljava/lang/String;

    return-void
.end method

.method private exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 486
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/RegisterActivity$5;

    invoke-direct {v2, p0}, Lactivity/RegisterActivity$5;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 492
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 493
    return-void
.end method

.method private getRegisterText()V
    .locals 3

    .prologue
    .line 395
    iget-object v1, p0, Lactivity/RegisterActivity;->FirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->SfirstName:Ljava/lang/String;

    .line 396
    iget-object v1, p0, Lactivity/RegisterActivity;->LastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->SlastName:Ljava/lang/String;

    .line 397
    iget-object v1, p0, Lactivity/RegisterActivity;->EmailAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->SemailAddress:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lactivity/RegisterActivity;->Password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->Spassword:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lactivity/RegisterActivity;->Password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->Spassword1:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lactivity/RegisterActivity;->QuestionAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->SquestionAnswer:Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lactivity/RegisterActivity;->m_Country:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 414
    :goto_1
    iget-object v1, p0, Lactivity/RegisterActivity;->date:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iput v1, p0, Lactivity/RegisterActivity;->month:I

    .line 415
    iget-object v1, p0, Lactivity/RegisterActivity;->date:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    iput v1, p0, Lactivity/RegisterActivity;->day:I

    .line 416
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lactivity/RegisterActivity;->Sposition:Ljava/lang/String;

    iget-object v2, p0, Lactivity/RegisterActivity;->m_Country:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lactivity/RegisterActivity;->m_Country_Code:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lactivity/RegisterActivity;->Sposition:Ljava/lang/String;

    goto :goto_1

    .line 404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 5

    .prologue
    .line 428
    invoke-virtual {p0}, Lactivity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 429
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 428
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 430
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 431
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 432
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 438
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 433
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 434
    const/4 v3, 0x1

    goto :goto_1

    .line 432
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextDown()V
    .locals 5

    .prologue
    .line 209
    invoke-direct {p0}, Lactivity/RegisterActivity;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-direct {p0, p0}, Lactivity/RegisterActivity;->toast(Landroid/content/Context;)V

    .line 276
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lactivity/RegisterActivity;->getRegisterText()V

    .line 216
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->SfirstName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->SlastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->SemailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->Spassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->Spassword1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->Squestion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SQA "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->SquestionAnswer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/RegisterActivity;->Sposition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MO "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lactivity/RegisterActivity;->month:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DA "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lactivity/RegisterActivity;->day:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lactivity/RegisterActivity;->GetAppleEmail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v1, 0x1

    .line 229
    .local v1, suit:Z
    invoke-direct {p0}, Lactivity/RegisterActivity;->FirstNameSuit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 230
    invoke-direct {p0}, Lactivity/RegisterActivity;->LastNameSuit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 231
    invoke-direct {p0}, Lactivity/RegisterActivity;->EmailAddressSuit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 232
    invoke-direct {p0}, Lactivity/RegisterActivity;->PasswordSuit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 233
    invoke-direct {p0}, Lactivity/RegisterActivity;->Password1Suit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 234
    invoke-direct {p0}, Lactivity/RegisterActivity;->QuestionAnswerSuit()Z

    move-result v2

    and-int/2addr v1, v2

    .line 235
    if-eqz v1, :cond_2

    .line 237
    iget-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 238
    iget-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 239
    const/4 v2, 0x0

    iput-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    .line 241
    :cond_1
    const v2, 0x7f070083

    invoke-virtual {p0, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/common/DialogFactory;->creatRequestDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    .line 242
    iget-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 243
    new-instance v0, Lcom/client/Register;

    iget-object v2, p0, Lactivity/RegisterActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, v2, p0}, Lcom/client/Register;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 244
    .local v0, mRegister:Lcom/client/Register;
    iget-object v2, p0, Lactivity/RegisterActivity;->SemailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/client/Register;->setEmailAddress(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lactivity/RegisterActivity;->SfirstName:Ljava/lang/String;

    iget-object v3, p0, Lactivity/RegisterActivity;->SlastName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/client/Register;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lactivity/RegisterActivity;->Spassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/client/Register;->setPassword(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lactivity/RegisterActivity;->Squestion:Ljava/lang/String;

    iget-object v3, p0, Lactivity/RegisterActivity;->SquestionAnswer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/client/Register;->setQuestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget v2, p0, Lactivity/RegisterActivity;->month:I

    iget v3, p0, Lactivity/RegisterActivity;->day:I

    invoke-virtual {v0, v2, v3}, Lcom/client/Register;->setDate(II)V

    .line 251
    iget-object v2, p0, Lactivity/RegisterActivity;->Sposition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/client/Register;->setPositon(Ljava/lang/String;)V

    .line 252
    iget-boolean v2, p0, Lactivity/RegisterActivity;->GetAppleEmail:Z

    invoke-virtual {v0, v2}, Lcom/client/Register;->setGetAppleEmail(Z)V

    .line 254
    invoke-virtual {v0}, Lcom/client/Register;->start()V

    goto/16 :goto_0

    .line 270
    .end local v0           #mRegister:Lcom/client/Register;
    :cond_2
    iget-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 272
    :cond_3
    const v2, 0x7f070084

    invoke-virtual {p0, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {p0, v2, v3}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private toast(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 444
    const v1, 0x7f07006f

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 445
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    new-instance v2, Lactivity/RegisterActivity$4;

    invoke-direct {v2, p0}, Lactivity/RegisterActivity$4;-><init>(Lactivity/RegisterActivity;)V

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 454
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 455
    return-void
.end method


# virtual methods
.method public OnChanged(Z)V
    .locals 1
    .parameter "checkState"

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/RegisterActivity;->GetAppleEmail:Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/RegisterActivity;->GetAppleEmail:Z

    goto :goto_0
.end method

.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 498
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 503
    return-void
.end method

.method public handleResStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "resmsg"

    .prologue
    .line 461
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-virtual {p0}, Lactivity/RegisterActivity;->finish()V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lactivity/RegisterActivity;->nextDown()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x7f0b0089
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x1090009

    const v3, 0x1090008

    .line 97
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->m_Questions:[Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->m_Country:[Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lactivity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->m_Country_Code:[Ljava/lang/String;

    .line 103
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/common/DialogFactory;->creatRequestDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;

    .line 105
    const v1, 0x7f0b00a6

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/common/SlideButton;

    .line 106
    .local v0, myBtn:Lcom/common/SlideButton;
    invoke-virtual {v0, p0}, Lcom/common/SlideButton;->SetOnChangedListener(Lcom/common/SlideButton$OnChangedListener;)V

    .line 111
    const v1, 0x7f0b0089

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lactivity/RegisterActivity;->mBtnCancle:Landroid/widget/Button;

    .line 112
    iget-object v1, p0, Lactivity/RegisterActivity;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f0b008a

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lactivity/RegisterActivity;->mBtnSuccess:Landroid/widget/Button;

    .line 114
    iget-object v1, p0, Lactivity/RegisterActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f0b008c

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->FirstName:Landroid/widget/EditText;

    .line 118
    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->firstName:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0b008e

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->LastName:Landroid/widget/EditText;

    .line 121
    const v1, 0x7f0b008d

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->lastName:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->EmailAddress:Landroid/widget/EditText;

    .line 124
    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->emailAddress:Landroid/widget/TextView;

    .line 125
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->Password:Landroid/widget/EditText;

    .line 127
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->password:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->Password1:Landroid/widget/EditText;

    .line 130
    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->password1:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0b009c

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lactivity/RegisterActivity;->QuestionAnswer:Landroid/widget/EditText;

    .line 134
    const v1, 0x7f0b009b

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lactivity/RegisterActivity;->questionAnswer:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f0b009e

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lactivity/RegisterActivity;->date:Landroid/widget/DatePicker;

    .line 137
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lactivity/RegisterActivity;->m_Spinner:Landroid/widget/Spinner;

    .line 138
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lactivity/RegisterActivity;->m_Questions:[Ljava/lang/String;

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lactivity/RegisterActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 139
    iget-object v1, p0, Lactivity/RegisterActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 140
    iget-object v1, p0, Lactivity/RegisterActivity;->m_Spinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lactivity/RegisterActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    iget-object v1, p0, Lactivity/RegisterActivity;->m_Spinner:Landroid/widget/Spinner;

    new-instance v2, Lactivity/RegisterActivity$2;

    invoke-direct {v2, p0}, Lactivity/RegisterActivity$2;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    const v1, 0x7f0b00a2

    invoke-virtual {p0, v1}, Lactivity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lactivity/RegisterActivity;->m_SpinnerCountry:Landroid/widget/Spinner;

    .line 162
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lactivity/RegisterActivity;->m_Country:[Ljava/lang/String;

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lactivity/RegisterActivity;->adapterCountry:Landroid/widget/ArrayAdapter;

    .line 163
    iget-object v1, p0, Lactivity/RegisterActivity;->adapterCountry:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    iget-object v1, p0, Lactivity/RegisterActivity;->m_SpinnerCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lactivity/RegisterActivity;->adapterCountry:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    iget-object v1, p0, Lactivity/RegisterActivity;->m_SpinnerCountry:Landroid/widget/Spinner;

    new-instance v2, Lactivity/RegisterActivity$3;

    invoke-direct {v2, p0}, Lactivity/RegisterActivity$3;-><init>(Lactivity/RegisterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 192
    iget-object v0, p0, Lactivity/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 187
    iget-object v0, p0, Lactivity/RegisterActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 188
    return-void
.end method
