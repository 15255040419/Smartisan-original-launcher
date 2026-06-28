.class Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;
    }
.end annotation


# instance fields
.field private final mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->parse(Ljava/io/InputStream;B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;BLandroid/accounts/Account;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->parseByAccount(Ljava/io/InputStream;BLandroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    return-object p0
.end method

.method private parse(Ljava/io/InputStream;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 91
    new-instance p2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {p2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    goto :goto_0

    .line 93
    :cond_0
    new-instance p2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {p2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 96
    :goto_0
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    .line 97
    new-instance v1, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    .line 98
    new-instance v2, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;

    invoke-direct {v2, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;)V

    .line 100
    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 102
    invoke-virtual {p2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 103
    invoke-virtual {p2, v1}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 106
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Lcom/android/vcard/exception/VCardException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private parseByAccount(Ljava/io/InputStream;BLandroid/accounts/Account;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 66
    new-instance p2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {p2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {p2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 71
    :goto_0
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-direct {v0, v1, p3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;)V

    .line 72
    new-instance p3, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {p3}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    .line 73
    new-instance v1, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;

    invoke-direct {v1, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 77
    invoke-virtual {p2, v0}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 78
    invoke-virtual {p2, p3}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 81
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lcom/android/vcard/exception/VCardException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 113
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getFirst()Lcom/android/vcard/VCardEntry;
    .locals 1

    .line 121
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry;

    return-object p0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->mCards:Ljava/util/ArrayList;

    return-object p0
.end method
