.class public Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataDumpReceiver.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->lu()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private lu()V
    .locals 3

    .line 1
    new-instance p0, Ljava/io/File;

    const-string v0, "/sdcard/smartisan"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "scenedata.xml"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    const-string v1, "scene"

    .line 10
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/smartisanos/launcher/view/Eb;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 12
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 13
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 14
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 15
    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 16
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 18
    invoke-virtual {v2, v0, p0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static mb(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;
    .locals 1

    const-string v0, "main"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Caa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object p0

    :cond_0
    const-string v0, "gl"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    return-object p0
.end method

.method private static nb(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "all"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->ALL:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto/16 :goto_0

    :cond_1
    const-string v1, "db"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->OY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    :cond_2
    const-string v1, "ui"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->vaa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    :cond_3
    const-string v1, "layer"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->LAYER:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    :cond_4
    const-string v1, "memory"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->MEMORY:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    goto :goto_0

    :cond_5
    const-string v1, "scene"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->waa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_6
    const-string v1, "fps"

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->xaa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_7
    const-string v1, "xml"

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->yaa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_8
    const-string v1, "dump_all_texture"

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->zaa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_9
    const-string v1, "info_log"

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->Aaa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_a
    const-string v1, "shadow"

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 23
    sget-object p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;->Baa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    return-object p0

    :cond_b
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "update_launchpad_remote_1"

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/smartisanos/launcher/service/LaunchpadService;->b(Landroid/content/ContentResolver;)V

    .line 7
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_3

    const-string v2, "update_launchpad_remote_2"

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/smartisanos/launcher/service/LaunchpadService;->a(Landroid/content/ContentResolver;)V

    :cond_3
    const-string v2, "open_log"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "OREO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/va;->kc()V

    .line 14
    :cond_4
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v2, -0x1

    const-string v4, "pageIndex"

    .line 15
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-eq v4, v2, :cond_6

    .line 16
    new-instance v7, Lcom/smartisanos/launcher/receiver/a;

    invoke-direct {v7, v0, v5, v4}, Lcom/smartisanos/launcher/receiver/a;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V

    .line 17
    invoke-virtual {v7, v6}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_6
    const-string v4, "screencap"

    .line 18
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_7

    .line 19
    new-instance v2, Lcom/smartisanos/launcher/receiver/b;

    invoke-direct {v2, v0, v5, v4}, Lcom/smartisanos/launcher/receiver/b;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V

    .line 20
    invoke-virtual {v2, v6}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_7
    const-string v2, "mode"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->nb(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$MODE;

    move-result-object v2

    if-nez v2, :cond_8

    return-void

    .line 23
    :cond_8
    sget-object v4, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    const-string v7, "thread"

    .line 24
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 25
    invoke-static {v7}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->mb(Ljava/lang/String;)Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    move-result-object v4

    .line 26
    :cond_9
    sget-boolean v7, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    const-string v8, "data dump begin !"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 27
    :cond_a
    sget-object v7, Lcom/smartisanos/launcher/receiver/h;->Ls:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 28
    :pswitch_0
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v2, :cond_b

    goto/16 :goto_4

    :cond_b
    const/high16 v2, 0x40000000    # 2.0f

    const-string v4, "s1"

    .line 29
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v8, "s2"

    .line 30
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    const/high16 v8, 0x40400000    # 3.0f

    const-string v9, "s3"

    .line 31
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const/high16 v9, 0x40e00000    # 7.0f

    const-string v10, "s4"

    .line 32
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v9

    const/high16 v10, 0x41300000    # 11.0f

    const-string v11, "s5"

    .line 33
    invoke-virtual {v1, v11, v10}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    const/high16 v11, 0x41700000    # 15.0f

    const-string v12, "s6"

    .line 34
    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    const/high16 v12, 0x41a00000    # 20.0f

    const-string v13, "s7"

    .line 35
    invoke-virtual {v1, v13, v12}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    const/high16 v13, 0x41c00000    # 24.0f

    const-string v14, "s8"

    .line 36
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    const v14, 0x3dcccccd    # 0.1f

    const-string v15, "s9"

    .line 37
    invoke-virtual {v1, v15, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v14

    const v15, 0x3dcccccd    # 0.1f

    const-string v5, "s10"

    .line 38
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    const v15, 0x3db851ec    # 0.09f

    const-string v6, "s11"

    .line 39
    invoke-virtual {v1, v6, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    const v15, 0x3da3d70a    # 0.08f

    const-string v7, "s12"

    .line 40
    invoke-virtual {v1, v7, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v7

    const v15, 0x3d8f5c29    # 0.07f

    const-string v3, "s13"

    .line 41
    invoke-virtual {v1, v3, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    const v15, 0x3d75c28f    # 0.06f

    const-string v0, "s14"

    .line 42
    invoke-virtual {v1, v0, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const v15, 0x3d4ccccd    # 0.05f

    move/from16 v18, v0

    const-string v0, "s15"

    .line 43
    invoke-virtual {v1, v0, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    move/from16 v19, v0

    const-string v0, "s16"

    .line 44
    invoke-virtual {v1, v0, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const/16 v15, 0x10

    new-array v15, v15, [F

    const/16 v17, 0x0

    aput v2, v15, v17

    const/16 v16, 0x1

    aput v4, v15, v16

    const/16 v20, 0x2

    aput v8, v15, v20

    const/16 v20, 0x3

    aput v9, v15, v20

    const/16 v20, 0x4

    aput v10, v15, v20

    const/16 v20, 0x5

    aput v11, v15, v20

    const/16 v20, 0x6

    aput v12, v15, v20

    const/16 v20, 0x7

    aput v13, v15, v20

    const/16 v20, 0x8

    aput v14, v15, v20

    const/16 v20, 0x9

    aput v5, v15, v20

    const/16 v20, 0xa

    aput v6, v15, v20

    const/16 v20, 0xb

    aput v7, v15, v20

    const/16 v20, 0xc

    aput v3, v15, v20

    const/16 v20, 0xd

    aput v18, v15, v20

    const/16 v20, 0xe

    aput v19, v15, v20

    const/16 v20, 0xf

    aput v0, v15, v20

    move/from16 v20, v0

    const-string v0, "tex1"

    move/from16 v21, v3

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move/from16 v22, v5

    const-string v5, "tex2"

    .line 46
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move/from16 v23, v6

    const-string v6, "tex3"

    .line 47
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move/from16 v24, v7

    const-string v7, "tex4"

    .line 48
    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move/from16 v25, v14

    const-string v14, "tex5"

    .line 49
    invoke-virtual {v1, v14, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    move/from16 v26, v10

    const-string v10, "tex6"

    .line 50
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move/from16 v27, v11

    const-string v11, "tex7"

    .line 51
    invoke-virtual {v1, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move/from16 v28, v12

    const-string v12, "tex8"

    .line 52
    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/16 v17, 0x0

    aput v0, v3, v17

    const/4 v0, 0x1

    aput v5, v3, v0

    const/4 v0, 0x2

    aput v6, v3, v0

    const/4 v0, 0x3

    aput v7, v3, v0

    const/4 v0, 0x4

    aput v14, v3, v0

    const/4 v0, 0x5

    aput v10, v3, v0

    const/4 v0, 0x6

    aput v11, v3, v0

    const/4 v0, 0x7

    aput v12, v3, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    const-string v5, "radius"

    .line 53
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const/high16 v5, 0x41000000    # 8.0f

    const-string v6, "len"

    .line 54
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    const-string v7, "opacity"

    .line 55
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v6

    const-string v7, "needdraw"

    const/4 v10, 0x1

    .line 56
    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v10, "x"

    const/4 v11, 0x0

    .line 57
    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v10

    const-string v12, "y"

    .line 58
    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v12

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v14, "ss"

    .line 59
    invoke-virtual {v1, v14, v11}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v11

    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v29, v13

    const-string v13, "sigmax"

    .line 60
    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    move/from16 v30, v2

    const-string v2, "sigmay"

    .line 61
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    const/16 v14, 0xc8

    move/from16 v31, v4

    const-string v4, "animtime"

    .line 62
    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v14, 0x6

    move/from16 v32, v8

    const-string v8, "style"

    .line 63
    invoke-virtual {v1, v8, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v14, "printlog"

    move/from16 v33, v9

    const/4 v9, 0x0

    .line 64
    invoke-virtual {v1, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/high16 v9, 0x44fa0000    # 2000.0f

    move/from16 v34, v8

    const-string v8, "maxlux"

    .line 65
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    move/from16 v35, v8

    const-string v8, "minlux"

    .line 66
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const-string v9, "px1"

    move/from16 v36, v8

    const/4 v8, 0x0

    .line 67
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v9

    const v8, 0x3f0ccccd    # 0.55f

    move/from16 v37, v14

    const-string v14, "py1"

    .line 68
    invoke-virtual {v1, v14, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const v14, 0x3ee66666    # 0.45f

    move/from16 v38, v4

    const-string v4, "px2"

    .line 69
    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v39, v4

    const-string v4, "py2"

    .line 70
    invoke-virtual {v1, v4, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 71
    sget-object v4, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v1

    const-string v1, "shadow info r = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", len = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", opa = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", needd = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y ="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", s ="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sigmax = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sigmay = "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v1, v4, :cond_c

    .line 72
    sget-object v4, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v2

    const-string v2, "shadow info s"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v41, v2

    const-string v2, " = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v15, v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    move/from16 v2, v40

    move/from16 v1, v41

    goto :goto_0

    :cond_c
    move/from16 v40, v2

    const/4 v1, 0x0

    .line 73
    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_d

    .line 74
    sget-object v2, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "shadow info  tex"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    move v1, v14

    goto :goto_1

    .line 75
    :cond_d
    new-instance v1, Lcom/smartisanos/smengine/Ma;

    move/from16 v4, p2

    move/from16 v2, v39

    invoke-direct {v1, v9, v8, v2, v4}, Lcom/smartisanos/smengine/Ma;-><init>(FFFF)V

    .line 76
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/Ra;->nc(I)V

    .line 77
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    move/from16 v4, v38

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/Ra;->oc(I)V

    move/from16 v2, v37

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/16 v17, 0x1

    goto :goto_2

    :cond_e
    const/16 v17, 0x0

    .line 78
    :goto_2
    sput-boolean v17, Lcom/smartisanos/smengine/Ra;->dV:Z

    .line 79
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    move/from16 v4, v35

    move/from16 v7, v36

    invoke-virtual {v2, v4, v7}, Lcom/smartisanos/smengine/Ra;->v(FF)V

    .line 80
    invoke-static {v1}, Lcom/smartisanos/smengine/Ra;->a(Lcom/smartisanos/smengine/Ma;)V

    const/4 v1, 0x5

    move/from16 v2, v34

    if-ne v2, v1, :cond_f

    .line 81
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/smengine/a/k;

    move/from16 v4, v30

    move/from16 v7, v31

    move/from16 v8, v32

    move/from16 v9, v33

    invoke-direct {v2, v4, v7, v8, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/Ra;->a(ILcom/smartisanos/smengine/a/k;)V

    .line 82
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/smengine/a/k;

    move/from16 v4, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move/from16 v9, v29

    invoke-direct {v2, v4, v7, v8, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/Ra;->a(ILcom/smartisanos/smengine/a/k;)V

    .line 83
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/smengine/a/k;

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v4, v25

    invoke-direct {v2, v4, v7, v8, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/Ra;->a(ILcom/smartisanos/smengine/a/k;)V

    .line 84
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/smengine/a/k;

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v4, v21

    invoke-direct {v2, v4, v7, v8, v9}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Lcom/smartisanos/smengine/Ra;->a(ILcom/smartisanos/smengine/a/k;)V

    .line 85
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/Ra;->W(F)V

    .line 86
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/Ra;->U(F)V

    .line 87
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/Ra;->V(F)V

    .line 88
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/smengine/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v12, v11, v2}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/Ra;->a(ILcom/smartisanos/smengine/a/k;)V

    .line 89
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/Ra;->X(F)V

    .line 90
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ra;->Y(F)V

    .line 91
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Ra;->c([I)V

    goto :goto_3

    :cond_f
    if-ltz v2, :cond_10

    const/4 v0, 0x4

    if-gt v2, v0, :cond_10

    .line 92
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/Ra;->q(IZ)V

    .line 93
    :cond_10
    :goto_3
    new-instance v0, Lcom/smartisanos/launcher/receiver/g;

    const/16 v2, 0x64

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/g;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto/16 :goto_4

    :pswitch_1
    move v0, v3

    .line 95
    sput-boolean v0, Lcom/smartisanos/launcher/va;->_h:Z

    goto/16 :goto_4

    :pswitch_2
    move-object v1, v0

    move v2, v5

    move v3, v6

    .line 96
    new-instance v0, Lcom/smartisanos/launcher/receiver/f;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/f;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    .line 97
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto/16 :goto_4

    :pswitch_3
    move-object v1, v0

    move v2, v5

    move v3, v6

    .line 98
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    if-ne v4, v0, :cond_11

    .line 99
    new-instance v0, Lcom/smartisanos/launcher/receiver/e;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/e;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    .line 101
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->lu()V

    goto :goto_4

    :pswitch_4
    const-string v0, "value"

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 103
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Eb;->ex:Z

    goto :goto_4

    .line 104
    :cond_12
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/Eb;->ex:Z

    goto :goto_4

    :pswitch_5
    const/4 v1, 0x1

    .line 105
    sget-object v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;->Daa:Lcom/smartisanos/launcher/receiver/DataDumpReceiver$THREAD_MODE;

    if-ne v4, v0, :cond_13

    .line 106
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Eb;->Xw:Z

    goto :goto_4

    .line 107
    :cond_13
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->qh()V

    goto :goto_4

    :pswitch_6
    move-object v1, v0

    .line 108
    new-instance v0, Lcom/smartisanos/launcher/receiver/d;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/d;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    :pswitch_7
    const-string v0, "dumpsys meminfo"

    .line 110
    invoke-static {v0}, Lcom/smartisanos/launcher/Aa;->z(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_8
    move-object v1, v0

    move v2, v5

    move v3, v6

    .line 111
    new-instance v0, Lcom/smartisanos/launcher/receiver/c;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/receiver/c;-><init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V

    .line 112
    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_4

    :pswitch_9
    const-string v0, "for DataDumpReceiver"

    .line 113
    invoke-static {v0}, Lcom/smartisanos/launcher/data/A;->N(Ljava/lang/String;)V

    :goto_4
    :pswitch_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
