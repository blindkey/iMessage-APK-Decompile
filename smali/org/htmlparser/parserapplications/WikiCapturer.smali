.class public Lorg/htmlparser/parserapplications/WikiCapturer;
.super Lorg/htmlparser/parserapplications/SiteCapturer;
.source "WikiCapturer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;-><init>()V

    .line 54
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 20
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v16, Lorg/htmlparser/parserapplications/WikiCapturer;

    invoke-direct/range {v16 .. v16}, Lorg/htmlparser/parserapplications/WikiCapturer;-><init>()V

    .line 143
    .local v16, worker:Lorg/htmlparser/parserapplications/WikiCapturer;
    move-object/from16 v0, p0

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 145
    const/4 v2, 0x0

    const-string v3, "Enter the URL to capture:"

    const-string v4, "Web Site"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "http://htmlparser.sourceforge.net/wiki"

    invoke-static/range {v2 .. v8}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 153
    .local v15, url:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 154
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/htmlparser/parserapplications/WikiCapturer;->setSource(Ljava/lang/String;)V

    .line 160
    .end local v15           #url:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    array-length v3, v0

    if-lt v2, v3, :cond_3

    .line 162
    invoke-virtual/range {v16 .. v16}, Lorg/htmlparser/parserapplications/WikiCapturer;->getSource()Ljava/lang/String;

    move-result-object v15

    .line 163
    .restart local v15       #url:Ljava/lang/String;
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    .local v13, source:Ljava/net/URL;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, path:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v14, target:Ljava/io/File;
    new-instance v10, Ljavax/swing/JFileChooser;

    invoke-direct {v10, v14}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    .line 167
    .local v10, chooser:Ljavax/swing/JFileChooser;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljavax/swing/JFileChooser;->setDialogType(I)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V

    .line 169
    invoke-virtual {v10, v14}, Ljavax/swing/JFileChooser;->setSelectedFile(Ljava/io/File;)V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V

    .line 171
    const-string v2, "Target Directory"

    invoke-virtual {v10, v2}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljavax/swing/JFileChooser;->showSaveDialog(Ljava/awt/Component;)I

    move-result v12

    .line 173
    .local v12, ret:I
    if-nez v12, :cond_2

    .line 174
    invoke-virtual {v10}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setTarget(Ljava/lang/String;)V

    .line 180
    .end local v10           #chooser:Ljavax/swing/JFileChooser;
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #ret:I
    .end local v13           #source:Ljava/net/URL;
    .end local v14           #target:Ljava/io/File;
    .end local v15           #url:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    array-length v3, v0

    if-lt v2, v3, :cond_5

    .line 182
    const/4 v2, 0x0

    const-string v3, "Should resources be captured:"

    const-string v4, "Capture Resources"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v17, v7, v8

    const/4 v8, 0x1

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v17, v7, v8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v2 .. v8}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 190
    .local v9, capture:Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    .line 191
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setCaptureResources(Z)V

    .line 197
    .end local v9           #capture:Ljava/lang/Boolean;
    :goto_2
    new-instance v2, Lorg/htmlparser/filters/NotFilter;

    new-instance v3, Lorg/htmlparser/filters/OrFilter;

    new-instance v4, Lorg/htmlparser/filters/AndFilter;

    new-instance v5, Lorg/htmlparser/filters/TagNameFilter;

    const-string v6, "DIV"

    invoke-direct {v5, v6}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v7, "id"

    const-string v8, "navbar"

    invoke-direct {v6, v7, v8}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    new-instance v5, Lorg/htmlparser/filters/OrFilter;

    new-instance v6, Lorg/htmlparser/filters/AndFilter;

    new-instance v7, Lorg/htmlparser/filters/TagNameFilter;

    const-string v8, "DIV"

    invoke-direct {v7, v8}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v17, "id"

    const-string v18, "actionbar"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    new-instance v7, Lorg/htmlparser/filters/AndFilter;

    new-instance v8, Lorg/htmlparser/filters/TagNameFilter;

    const-string v17, "DIV"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    new-instance v17, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v18, "id"

    const-string v19, "xhtml-validator"

    invoke-direct/range {v17 .. v19}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v5, v6, v7}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v2, v3}, Lorg/htmlparser/filters/NotFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setFilter(Lorg/htmlparser/NodeFilter;)V

    .line 210
    invoke-virtual/range {v16 .. v16}, Lorg/htmlparser/parserapplications/WikiCapturer;->capture()V

    .line 212
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 213
    return-void

    .line 156
    .restart local v15       #url:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 159
    .end local v15           #url:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p0, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .restart local v10       #chooser:Ljavax/swing/JFileChooser;
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #ret:I
    .restart local v13       #source:Ljava/net/URL;
    .restart local v14       #target:Ljava/io/File;
    .restart local v15       #url:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 179
    .end local v10           #chooser:Ljavax/swing/JFileChooser;
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #ret:I
    .end local v13           #source:Ljava/net/URL;
    .end local v14           #target:Ljava/io/File;
    .end local v15           #url:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    aget-object v2, p0, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setTarget(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    .restart local v9       #capture:Ljava/lang/Boolean;
    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2

    .line 196
    .end local v9           #capture:Ljava/lang/Boolean;
    :cond_5
    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/WikiCapturer;->setCaptureResources(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected isToBeCaptured(Ljava/lang/String;)Z
    .locals 2
    .parameter "link"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isToBeCaptured(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "PhpWikiAdministration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    const-string v1, "PhpWikiDocumentation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "TextFormattingRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_3
    const-string v1, "NewMarkupTestPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_4
    const-string v1, "OldMarkupTestPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "OldTextFormattingRules"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_6
    const-string v1, "PgsrcTranslation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_7
    const-string v1, "HowToUseWiki"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_8
    const-string v1, "MoreAboutMechanics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_9
    const-string v1, "AddingPages"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_a
    const-string v1, "WikiWikiWeb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 95
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_b
    const-string v1, "UserPreferences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_c
    const-string v1, "PhpWiki"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_d
    const-string v1, "WabiSabi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 101
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 102
    :cond_e
    const-string v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 103
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 104
    :cond_f
    const-string v1, "FindPage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 105
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 106
    :cond_10
    const-string v1, "RecentChanges"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 107
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 108
    :cond_11
    const-string v1, "RecentEdits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 109
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 110
    :cond_12
    const-string v1, "RecentVisitors"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 111
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 112
    :cond_13
    const-string v1, "SteveWainstead"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
