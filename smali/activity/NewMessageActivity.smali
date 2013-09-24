.class public Lactivity/NewMessageActivity;
.super Lactivity/MyActivity;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/NewMessageActivity$GuidePageChangeListener;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x2

.field private static final NOQUERY:I = 0x0

.field private static final QUERYERR:I = 0x2

.field private static final QUERYING:I = 0x3

.field private static final QUERYOUT:I = 0x4

.field private static final QUERYSUCC:I = 0x1


# instance fields
.field private final GETFILECODE:I

.field private final GET_CODE:I

.field private HasText:Z

.field private Reciver:Ljava/lang/String;

.field private SendMsg:Ljava/lang/String;

.field private final TAKEPHOTO:I

.field private final TAKEVIDEO:I

.field private UserExit:Z

.field private choosegrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private choosegridsview:Landroid/widget/GridView;

.field private chooseview:Landroid/support/v4/view/ViewPager;

.field private curUser:Lcom/common/User;

.field private entity:Lactivity/ChatMsgEntity;

.field private face_pagenum:I

.field private grids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mBtnAddContact:Landroid/widget/Button;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnPhoto:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mEditTextMsg:Landroid/widget/EditText;

.field private mEditTextReciver:Landroid/widget/EditText;

.field private mQueryMark:Landroid/widget/TextView;

.field private mQueryStatus:I

.field private page0:Landroid/widget/ImageView;

.field private page1:Landroid/widget/ImageView;

.field private page2:Landroid/widget/ImageView;

.field private page_select:Landroid/widget/LinearLayout;

.field private perpagenum:I

.field private start_page_id:I

.field private strImgPath:Ljava/lang/String;

.field private strVideoPath:Ljava/lang/String;

.field private user:Lcom/common/User;

.field private util:Lcom/setting/SharePreferenceUtil;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 94
    const v0, 0x11000

    iput v0, p0, Lactivity/NewMessageActivity;->GETFILECODE:I

    .line 95
    const v0, 0x11001

    iput v0, p0, Lactivity/NewMessageActivity;->TAKEPHOTO:I

    .line 96
    const v0, 0x11002

    iput v0, p0, Lactivity/NewMessageActivity;->TAKEVIDEO:I

    .line 97
    iput v1, p0, Lactivity/NewMessageActivity;->GET_CODE:I

    .line 104
    iput v1, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    .line 106
    const v0, 0x11900

    iput v0, p0, Lactivity/NewMessageActivity;->start_page_id:I

    .line 107
    iput v1, p0, Lactivity/NewMessageActivity;->face_pagenum:I

    .line 108
    const/16 v0, 0x17

    iput v0, p0, Lactivity/NewMessageActivity;->perpagenum:I

    .line 125
    iput-boolean v1, p0, Lactivity/NewMessageActivity;->UserExit:Z

    .line 126
    iput-boolean v1, p0, Lactivity/NewMessageActivity;->HasText:Z

    .line 598
    new-instance v0, Lactivity/NewMessageActivity$1;

    invoke-direct {v0, p0}, Lactivity/NewMessageActivity$1;-><init>(Lactivity/NewMessageActivity;)V

    iput-object v0, p0, Lactivity/NewMessageActivity;->handler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lactivity/NewMessageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-boolean p1, p0, Lactivity/NewMessageActivity;->UserExit:Z

    return-void
.end method

.method static synthetic access$1(Lactivity/NewMessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    return-void
.end method

.method static synthetic access$10(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$11(Lactivity/NewMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lactivity/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lactivity/NewMessageActivity;->choosegrids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lactivity/NewMessageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lactivity/NewMessageActivity;->perpagenum:I

    return v0
.end method

.method static synthetic access$14(Lactivity/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lactivity/NewMessageActivity;->grids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lactivity/NewMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lactivity/NewMessageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0, p1, p2, p3}, Lactivity/NewMessageActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lactivity/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    invoke-direct {p0}, Lactivity/NewMessageActivity;->updateMark()V

    return-void
.end method

.method static synthetic access$5(Lactivity/NewMessageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 107
    iget v0, p0, Lactivity/NewMessageActivity;->face_pagenum:I

    return v0
.end method

.method static synthetic access$6(Lactivity/NewMessageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lactivity/NewMessageActivity;->start_page_id:I

    return v0
.end method

.method static synthetic access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lactivity/NewMessageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lactivity/NewMessageActivity;->HasText:Z

    return-void
.end method

.method static synthetic access$9(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 625
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/NewMessageActivity$9;

    invoke-direct {v2, p0}, Lactivity/NewMessageActivity$9;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 636
    return-void
.end method

.method private getFilebyPath(Ljava/lang/String;)V
    .locals 24
    .parameter "img_path"

    .prologue
    .line 854
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v7, currentPath:Ljava/io/File;
    const/4 v8, 0x0

    .line 856
    .local v8, drawable:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 858
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 859
    .local v10, fileName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 860
    const v22, 0x7f050002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 859
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 861
    const/high16 v21, 0x3e80

    const/16 v22, 0xfa

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/common/VideoThumBnail;->getImageThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 870
    .end local v10           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 871
    .local v13, index:I
    add-int/lit8 v21, v13, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, FileName:Ljava/lang/String;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 877
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 878
    .local v17, paint:Landroid/graphics/Paint;
    const/high16 v21, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 879
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 881
    invoke-static {}, Lcom/common/TelPhoneConstant;->getNewMessageSendFileShowWidth()F

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v4

    .line 883
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 886
    .local v14, len:I
    int-to-float v0, v14

    move/from16 v21, v0

    invoke-static {}, Lcom/common/TelPhoneConstant;->getImageBarLeftSpace()F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 887
    .local v16, nptlen:I
    if-eqz v8, :cond_2

    .line 888
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 889
    .local v20, width:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 901
    .local v11, height:I
    :goto_1
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 900
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 905
    .local v5, bmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 906
    .local v18, resources:Landroid/content/res/Resources;
    const v21, 0x7f020211

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/NinePatchDrawable;

    .line 907
    .local v15, ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 912
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 913
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 919
    if-nez v8, :cond_3

    .line 920
    sub-int v21, v16, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    const/high16 v22, 0x41d8

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v6, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 924
    :goto_2
    new-instance v12, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 925
    .local v12, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "STARTFILE:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":ENDFILE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, file:Ljava/lang/CharSequence;
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 927
    .local v19, spannableString:Landroid/text/SpannableString;
    const/16 v21, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 928
    const/16 v23, 0x21

    .line 927
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 932
    return-void

    .line 862
    .end local v4           #FileName:Ljava/lang/String;
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #file:Ljava/lang/CharSequence;
    .end local v11           #height:I
    .end local v12           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v13           #index:I
    .end local v14           #len:I
    .end local v15           #ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v16           #nptlen:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #resources:Landroid/content/res/Resources;
    .end local v19           #spannableString:Landroid/text/SpannableString;
    .end local v20           #width:I
    .restart local v10       #fileName:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 863
    const v22, 0x7f050004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 862
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 864
    const/16 v21, 0x96

    const/16 v22, 0x64

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/common/VideoThumBnail;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0

    .line 896
    .end local v10           #fileName:Ljava/lang/String;
    .restart local v4       #FileName:Ljava/lang/String;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #index:I
    .restart local v14       #len:I
    .restart local v16       #nptlen:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    :cond_2
    move/from16 v20, v16

    .line 897
    .restart local v20       #width:I
    invoke-static {}, Lcom/common/TelPhoneConstant;->getSendFileShowHeight()F

    move-result v21

    move/from16 v0, v21

    float-to-int v11, v0

    .restart local v11       #height:I
    goto/16 :goto_1

    .line 922
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    .restart local v15       #ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v18       #resources:Landroid/content/res/Resources;
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private nextPowerOfTwo(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 935
    const/4 v0, 0x1

    .line 937
    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 941
    return v0

    .line 939
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 936
    goto :goto_0
.end method

.method private setguID(Lactivity/ChatMsgEntity;)V
    .locals 6
    .parameter "entity"

    .prologue
    .line 766
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 767
    .local v3, random:Ljava/util/Random;
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 770
    .local v0, m_guid:[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 771
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v0, v5

    or-int/2addr v4, v5

    int-to-long v1, v4

    .line 772
    .local v1, msgid:J
    const-wide/32 v4, 0x7fffffff

    and-long/2addr v1, v4

    .line 773
    iget-object v4, p0, Lactivity/NewMessageActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v5, p0, Lactivity/NewMessageActivity;->curUser:Lcom/common/User;

    invoke-virtual {v5}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/DB/MessageDB;->getMsgById(Ljava/lang/String;J)Lactivity/ChatMsgEntity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 775
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 778
    invoke-virtual {p1, v0}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 779
    invoke-virtual {p1, v1, v2}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 780
    return-void
.end method

.method private showFileChooser()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 458
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lactivity/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 460
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 463
    iget-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    iget-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMark()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 306
    iget v0, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :pswitch_3
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public CloseFacePicture()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 688
    iget-object v0, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 691
    return-void
.end method

.method public SendMsg(Lactivity/ChatMsgEntity;)V
    .locals 5
    .parameter "entity"

    .prologue
    .line 968
    iget-object v4, p0, Lactivity/NewMessageActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v4}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v1

    .line 970
    .local v1, client:Lcom/client/Client;
    iget-object v4, p0, Lactivity/NewMessageActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v4}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v0

    .line 971
    .local v0, attach:Lcom/client/Attach;
    new-instance v2, Lcom/client/Send;

    invoke-direct {v2, p1}, Lcom/client/Send;-><init>(Lactivity/ChatMsgEntity;)V

    .line 972
    .local v2, mSend:Lcom/client/Send;
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 974
    .local v3, tranObject:Lcom/common/TranObject;
    invoke-virtual {v3, v2}, Lcom/common/TranObject;->setSend(Lcom/client/Send;)V

    .line 975
    invoke-virtual {v2}, Lcom/client/Send;->haveAttach()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 976
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 977
    iget-object v4, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/common/TranObject;->setQueryAndSend(Ljava/lang/String;Lcom/client/Send;)V

    .line 978
    invoke-virtual {v0, v3}, Lcom/client/Attach;->pushAttach(Lcom/common/TranObject;)V

    .line 984
    :goto_0
    return-void

    .line 981
    :cond_0
    const/16 v4, 0x32

    invoke-virtual {p1, v4}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 982
    invoke-virtual {v1, v3}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    goto :goto_0
.end method

.method protected SendQuery()V
    .locals 4

    .prologue
    .line 580
    iget-object v3, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    .line 582
    iget-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 597
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v3, 0x3

    iput v3, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    .line 587
    invoke-direct {p0}, Lactivity/NewMessageActivity;->updateMark()V

    .line 589
    iget-object v3, p0, Lactivity/NewMessageActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v0

    .line 591
    .local v0, client:Lcom/client/Client;
    new-instance v1, Lcom/client/QueryUser;

    iget-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/client/QueryUser;-><init>(Ljava/lang/String;)V

    .line 592
    .local v1, mQuerUser:Lcom/client/QueryUser;
    new-instance v2, Lcom/common/TranObject;

    invoke-direct {v2}, Lcom/common/TranObject;-><init>()V

    .line 593
    .local v2, tranObject:Lcom/common/TranObject;
    iget-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/common/TranObject;->setQuery(Ljava/lang/String;Lactivity/NewMessageActivity;)V

    .line 595
    invoke-virtual {v0, v2}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    goto :goto_0
.end method

.method public ShowFacePicture()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 693
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lactivity/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 695
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 695
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 698
    iget-object v1, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 699
    iget-object v1, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v1, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 703
    iget-object v1, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1021
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    const/4 v0, 0x4

    iput v0, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    .line 1027
    :cond_0
    invoke-direct {p0}, Lactivity/NewMessageActivity;->updateMark()V

    .line 1028
    return-void
.end method

.method public UserExit(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 643
    iget-object v1, p0, Lactivity/NewMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 645
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 646
    iget-object v1, p0, Lactivity/NewMessageActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    return-void
.end method

.method public disableSend()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 657
    iget-object v0, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 658
    return-void
.end method

.method public enableSend()V
    .locals 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lactivity/NewMessageActivity;->UserExit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lactivity/NewMessageActivity;->HasText:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 652
    iget-object v0, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 654
    :cond_0
    return-void
.end method

.method public initChooseView()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 335
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    .line 336
    iget-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lactivity/NewMessageActivity;->choosegrids:Ljava/util/ArrayList;

    .line 338
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 339
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lactivity/NewMessageActivity;->choosegridsview:Landroid/widget/GridView;

    .line 340
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, chooseItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v7, listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020011

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v8, listItem1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020012

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070046

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v9, listItem2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070047

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v10, listItem3:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f02000f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "TITLE"

    iget-object v3, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 366
    const v3, 0x7f03000c

    .line 367
    new-array v4, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "TITLE"

    aput-object v5, v4, v1

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 365
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 370
    .local v0, simpleAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lactivity/NewMessageActivity;->choosegridsview:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v1, p0, Lactivity/NewMessageActivity;->choosegridsview:Landroid/widget/GridView;

    new-instance v3, Lactivity/NewMessageActivity$5;

    invoke-direct {v3, p0}, Lactivity/NewMessageActivity$5;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 411
    iget-object v1, p0, Lactivity/NewMessageActivity;->choosegrids:Ljava/util/ArrayList;

    iget-object v3, p0, Lactivity/NewMessageActivity;->choosegridsview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v11, Lactivity/NewMessageActivity$6;

    invoke-direct {v11, p0}, Lactivity/NewMessageActivity$6;-><init>(Lactivity/NewMessageActivity;)V

    .line 436
    .local v11, mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v11}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 438
    return-void

    .line 367
    :array_0
    .array-data 0x4
        0x3at 0x0t 0xbt 0x7ft
        0x3bt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public initFace()V
    .locals 21

    .prologue
    .line 473
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 474
    .local v13, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lactivity/NewMessageActivity;->grids:Ljava/util/ArrayList;

    .line 475
    const/4 v11, 0x0

    .line 476
    .local v11, index:I
    sget-object v3, Lcom/common/emoji;->emojiImgs:[I

    array-length v9, v3

    .line 477
    .local v9, emojinum:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lactivity/NewMessageActivity;->face_pagenum:I

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lactivity/NewMessageActivity;->start_page_id:I

    move/from16 v17, v0

    .line 479
    .local v17, page_select_id:I
    :goto_0
    if-lt v11, v9, :cond_0

    .line 547
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GridView\u7684\u957f\u5ea6 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lactivity/NewMessageActivity;->grids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    new-instance v16, Lactivity/NewMessageActivity$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lactivity/NewMessageActivity$8;-><init>(Lactivity/NewMessageActivity;)V

    .line 573
    .local v16, mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lactivity/NewMessageActivity$GuidePageChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lactivity/NewMessageActivity$GuidePageChangeListener;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 577
    return-void

    .line 480
    .end local v16           #mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    :cond_0
    const v3, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridView;

    .line 481
    .local v10, gViewt:Landroid/widget/GridView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v4, listItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v18, 0x0

    .line 484
    .local v18, size:I
    move/from16 v19, v11

    .line 485
    .local v19, start:I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/NewMessageActivity;->perpagenum:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    if-lt v11, v9, :cond_2

    .line 492
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 493
    .local v14, listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "image"

    const v5, 0x7f020205

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 498
    .local v8, btn:Landroid/widget/ImageView;
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 499
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v15, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 500
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/NewMessageActivity;->face_pagenum:I

    if-nez v3, :cond_3

    .line 501
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 502
    const v3, 0x7f02022c

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 508
    :goto_2
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v5, v0, Lactivity/NewMessageActivity;->face_pagenum:I

    invoke-virtual {v3, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 511
    add-int/lit8 v17, v17, 0x1

    .line 512
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/NewMessageActivity;->face_pagenum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lactivity/NewMessageActivity;->face_pagenum:I

    .line 514
    new-instance v2, Landroid/widget/SimpleAdapter;

    .line 515
    const v5, 0x7f030023

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "image"

    aput-object v7, v6, v3

    .line 516
    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x0

    const v20, 0x7f0b00b0

    aput v20, v7, v3

    move-object/from16 v3, p0

    .line 514
    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 517
    .local v2, simpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v10, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 518
    new-instance v3, Lactivity/NewMessageActivity$7;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lactivity/NewMessageActivity$7;-><init>(Lactivity/NewMessageActivity;I)V

    invoke-virtual {v10, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/NewMessageActivity;->grids:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 487
    .end local v2           #simpleAdapter:Landroid/widget/SimpleAdapter;
    .end local v8           #btn:Landroid/widget/ImageView;
    .end local v14           #listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 488
    .restart local v14       #listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "image"

    sget-object v5, Lcom/common/emoji;->emojiImgs:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    add-int/lit8 v18, v18, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto/16 :goto_1

    .line 505
    .restart local v8       #btn:Landroid/widget/ImageView;
    .restart local v15       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 506
    const v3, 0x7f02022d

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 785
    sparse-switch p1, :sswitch_data_0

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 787
    :sswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 789
    .local v2, uriVideo:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lactivity/NewMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 790
    .local v11, cursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lactivity/NewMessageActivity;->strVideoPath:Ljava/lang/String;

    .line 793
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->strVideoPath:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 794
    const-string v1, "Video Path"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lactivity/NewMessageActivity;->strVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->strVideoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lactivity/NewMessageActivity;->getFilebyPath(Ljava/lang/String;)V

    goto :goto_0

    .line 800
    .end local v2           #uriVideo:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    :sswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 801
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 802
    const-string v1, "Photo Path"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lactivity/NewMessageActivity;->getFilebyPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :sswitch_2
    if-eqz p3, :cond_0

    .line 808
    const-string v1, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/common/User;

    .line 809
    .local v15, tuser:Lcom/common/User;
    const-string v1, "Contact back"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    if-eqz v15, :cond_0

    .line 813
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v15}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v12

    .line 814
    .local v12, entity:Lactivity/ContactListEntity;
    if-eqz v12, :cond_0

    .line 815
    const-string v1, "Contact back"

    invoke-virtual {v15}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 817
    invoke-virtual {v12}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {}, Lcom/common/TelPhoneConstant;->getNewMessageToUserShowWidth()F

    move-result v6

    invoke-static {v1, v3, v6}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v14

    .line 818
    .local v14, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v12}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Lcom/common/VideoThumBnail;->getSpannableStringWithWorld(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 824
    .end local v12           #entity:Lactivity/ContactListEntity;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #tuser:Lcom/common/User;
    :sswitch_3
    if-eqz p3, :cond_0

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 826
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 828
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v5, v1

    .line 832
    .local v5, proj:[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 834
    .local v16, uriString:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 842
    .end local v16           #uriString:Ljava/lang/String;
    .local v13, img_path:Ljava/lang/String;
    :goto_1
    const-string v1, "ht"

    invoke-static {v1, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lactivity/NewMessageActivity;->getFilebyPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    .end local v13           #img_path:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lactivity/NewMessageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 837
    .local v10, actualimagecursor:Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 838
    .local v9, actual_image_column_index:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 839
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #img_path:Ljava/lang/String;
    goto :goto_1

    .line 785
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x11000 -> :sswitch_3
        0x11001 -> :sswitch_1
        0x11002 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 686
    :goto_0
    :pswitch_0
    return-void

    .line 665
    :pswitch_1
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->finish()V

    goto :goto_0

    .line 669
    :pswitch_2
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->send()V

    goto :goto_0

    .line 673
    :pswitch_3
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->startContactActivity()V

    goto :goto_0

    .line 677
    :pswitch_4
    invoke-direct {p0}, Lactivity/NewMessageActivity;->showFileChooser()V

    goto :goto_0

    .line 681
    :pswitch_5
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->CloseFacePicture()V

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x7f0b006b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x8

    const/4 v11, -0x1

    .line 143
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->requestWindowFeature(I)Z

    .line 145
    const v9, 0x7f030019

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->setContentView(I)V

    .line 146
    const/4 v9, 0x0

    iput v9, p0, Lactivity/NewMessageActivity;->mQueryStatus:I

    .line 161
    const v9, 0x7f0b006b

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mBtnBack:Landroid/widget/Button;

    .line 162
    iget-object v9, p0, Lactivity/NewMessageActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v9, 0x7f0b0073

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    .line 165
    iget-object v9, p0, Lactivity/NewMessageActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v9, 0x7f0b0072

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mBtnPhoto:Landroid/widget/Button;

    .line 168
    iget-object v9, p0, Lactivity/NewMessageActivity;->mBtnPhoto:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v9, 0x7f0b006f

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mBtnAddContact:Landroid/widget/Button;

    .line 171
    iget-object v9, p0, Lactivity/NewMessageActivity;->mBtnAddContact:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v9, 0x7f0b0069

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mQueryMark:Landroid/widget/TextView;

    .line 175
    const v9, 0x7f0b006e

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    .line 176
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    new-instance v10, Lactivity/NewMessageActivity$2;

    invoke-direct {v10, p0}, Lactivity/NewMessageActivity$2;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    const v9, 0x7f0b0074

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    .line 192
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    new-instance v10, Lactivity/NewMessageActivity$3;

    invoke-direct {v10, p0}, Lactivity/NewMessageActivity$3;-><init>(Lactivity/NewMessageActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 214
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 215
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, begin:I
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v0, v9, :cond_2

    .line 230
    :cond_0
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->enableSend()V

    .line 235
    .end local v0           #begin:I
    :goto_1
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "touser"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 236
    .local v8, touser:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 237
    iget-object v9, p0, Lactivity/NewMessageActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v9, v8}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v2

    .line 238
    .local v2, entity:Lactivity/ContactListEntity;
    if-nez v2, :cond_4

    .line 239
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v2           #entity:Lactivity/ContactListEntity;
    :cond_1
    :goto_2
    new-instance v4, Lactivity/NewMessageActivity$4;

    invoke-direct {v4, p0}, Lactivity/NewMessageActivity$4;-><init>(Lactivity/NewMessageActivity;)V

    .line 278
    .local v4, mTextWatcher:Landroid/text/TextWatcher;
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    invoke-virtual {v9, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    iget-object v9, p0, Lactivity/NewMessageActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v9}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v9

    iput-object v9, p0, Lactivity/NewMessageActivity;->curUser:Lcom/common/User;

    .line 284
    new-instance v9, Lactivity/ChatMsgEntity;

    invoke-direct {v9}, Lactivity/ChatMsgEntity;-><init>()V

    iput-object v9, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    .line 290
    const v9, 0x7f0b0075

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager;

    iput-object v9, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 291
    const v9, 0x7f0b0024

    invoke-virtual {p0, v9}, Lactivity/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    .line 292
    iget-object v9, p0, Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9, v12}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 293
    iget-object v9, p0, Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->initFace()V

    .line 298
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->initChooseView()V

    .line 302
    invoke-direct {p0}, Lactivity/NewMessageActivity;->updateMark()V

    .line 304
    return-void

    .line 219
    .end local v4           #mTextWatcher:Landroid/text/TextWatcher;
    .end local v8           #touser:Ljava/lang/String;
    .restart local v0       #begin:I
    :cond_2
    const-string v9, "STARTFILE:"

    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 220
    .local v7, start:I
    const-string v9, ":ENDFILE"

    invoke-virtual {v5, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 221
    .local v1, end:I
    if-eq v7, v11, :cond_0

    if-eq v1, v11, :cond_0

    .line 223
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 225
    add-int/lit8 v9, v7, 0xa

    invoke-virtual {v5, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, file:Ljava/lang/String;
    invoke-direct {p0, v3}, Lactivity/NewMessageActivity;->getFilebyPath(Ljava/lang/String;)V

    .line 228
    add-int/lit8 v0, v1, 0x8

    goto/16 :goto_0

    .line 233
    .end local v0           #begin:I
    .end local v1           #end:I
    .end local v3           #file:Ljava/lang/String;
    .end local v7           #start:I
    :cond_3
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->disableSend()V

    goto/16 :goto_1

    .line 242
    .restart local v2       #entity:Lactivity/ContactListEntity;
    .restart local v8       #touser:Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v2}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {}, Lcom/common/TelPhoneConstant;->getNewMessageToUserShowWidth()F

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v2}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v6}, Lcom/common/VideoThumBnail;->getSpannableStringWithWorld(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 332
    iget-object v0, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 327
    iget-object v0, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 328
    return-void
.end method

.method public send()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 709
    iget-object v3, p0, Lactivity/NewMessageActivity;->mEditTextReciver:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    .line 710
    iget-object v3, p0, Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, index:I
    :goto_0
    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 729
    :cond_0
    iget-object v3, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 730
    :cond_1
    iget-object v3, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 731
    iget-object v4, p0, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f070082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 730
    invoke-static {p0, v3, v4}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_1
    return-void

    .line 714
    :cond_2
    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    const-string v4, "STARTFILE:"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 715
    .local v2, st:I
    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    const-string v4, ":ENDFILE"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 716
    .local v0, ed:I
    if-eq v2, v7, :cond_0

    if-eq v0, v7, :cond_0

    .line 719
    if-lez v2, :cond_3

    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_3

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    .line 721
    add-int/lit8 v0, v0, 0x1

    .line 723
    :cond_3
    add-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v9, :cond_4

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    .line 726
    :cond_4
    add-int/lit8 v1, v0, 0x8

    goto/16 :goto_0

    .line 741
    .end local v0           #ed:I
    .end local v2           #st:I
    :cond_5
    new-instance v3, Lcom/common/User;

    invoke-direct {v3}, Lcom/common/User;-><init>()V

    iput-object v3, p0, Lactivity/NewMessageActivity;->user:Lcom/common/User;

    .line 742
    iget-object v3, p0, Lactivity/NewMessageActivity;->user:Lcom/common/User;

    iget-object v4, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 743
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    iget-object v4, p0, Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setAppleId(Ljava/lang/String;)V

    .line 744
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-static {}, Lcom/DB/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setDate(Ljava/lang/String;)V

    .line 745
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    iget-object v4, p0, Lactivity/NewMessageActivity;->SendMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 746
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    iget-object v4, p0, Lactivity/NewMessageActivity;->user:Lcom/common/User;

    invoke-virtual {v4}, Lcom/common/User;->getImg()I

    move-result v4

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setImg(I)V

    .line 747
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3, v6}, Lactivity/ChatMsgEntity;->setMsgType(Z)V

    .line 748
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3, v8}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 749
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3, v8}, Lactivity/ChatMsgEntity;->setisRead(Z)V

    .line 750
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 753
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-direct {p0, v3}, Lactivity/NewMessageActivity;->setguID(Lactivity/ChatMsgEntity;)V

    .line 754
    iget-object v3, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-virtual {p0, v3}, Lactivity/NewMessageActivity;->SendMsg(Lactivity/ChatMsgEntity;)V

    .line 755
    iget-object v3, p0, Lactivity/NewMessageActivity;->userDB:Lcom/DB/UserDB;

    iget-object v4, p0, Lactivity/NewMessageActivity;->user:Lcom/common/User;

    invoke-virtual {v3, v4}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 756
    iget-object v3, p0, Lactivity/NewMessageActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v4, p0, Lactivity/NewMessageActivity;->curUser:Lcom/common/User;

    invoke-virtual {v4}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lactivity/NewMessageActivity;->entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3, v4, v5}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 758
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->startChatActivity()V

    goto/16 :goto_1
.end method

.method public startChatActivity()V
    .locals 3

    .prologue
    .line 959
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/ChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 960
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 961
    const-string v1, "user"

    iget-object v2, p0, Lactivity/NewMessageActivity;->user:Lcom/common/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 962
    invoke-virtual {p0, v0}, Lactivity/NewMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 965
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->finish()V

    .line 966
    return-void
.end method

.method public startContactActivity()V
    .locals 4

    .prologue
    .line 944
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lactivity/NewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 946
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/NewMessageActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 947
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    .line 946
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 949
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lactivity/ContactListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 950
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 956
    return-void
.end method

.method protected startTakePhoto()V
    .locals 7

    .prologue
    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, imageCaptureIntent:Landroid/content/Intent;
    sget-object v4, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    iput-object v4, p0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v2, out:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 449
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #out:Ljava/io/File;
    iget-object v4, p0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .restart local v2       #out:Ljava/io/File;
    iget-object v4, p0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lactivity/NewMessageActivity;->strImgPath:Ljava/lang/String;

    .line 451
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 452
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "output"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 453
    const-string v4, "android.intent.extra.videoQuality"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const v4, 0x11001

    invoke-virtual {p0, v1, v4}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    return-void
.end method
