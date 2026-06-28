.class public Landroid/bluetooth/client/pbap/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;,
        Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
    }
.end annotation


# static fields
.field public static final CCH_PATH:Ljava/lang/String; = "telecom/cch.vcf"

.field public static final EVENT_PULL_PHONE_BOOK_DONE:I = 0x2

.field public static final EVENT_PULL_PHONE_BOOK_ERROR:I = 0x66

.field public static final EVENT_PULL_PHONE_BOOK_SIZE_DONE:I = 0x5

.field public static final EVENT_PULL_PHONE_BOOK_SIZE_ERROR:I = 0x69

.field public static final EVENT_PULL_VCARD_ENTRY_DONE:I = 0x4

.field public static final EVENT_PULL_VCARD_ENTRY_ERROR:I = 0x68

.field public static final EVENT_PULL_VCARD_LISTING_DONE:I = 0x3

.field public static final EVENT_PULL_VCARD_LISTING_ERROR:I = 0x67

.field public static final EVENT_PULL_VCARD_LISTING_SIZE_DONE:I = 0x6

.field public static final EVENT_PULL_VCARD_LISTING_SIZE_ERROR:I = 0x6a

.field public static final EVENT_SESSION_AUTH_REQUESTED:I = 0xcb

.field public static final EVENT_SESSION_AUTH_TIMEOUT:I = 0xcc

.field public static final EVENT_SESSION_CONNECTED:I = 0xc9

.field public static final EVENT_SESSION_DISCONNECTED:I = 0xca

.field public static final EVENT_SET_PHONE_BOOK_DONE:I = 0x1

.field public static final EVENT_SET_PHONE_BOOK_ERROR:I = 0x65

.field public static final ICH_PATH:Ljava/lang/String; = "telecom/ich.vcf"

.field public static final MAX_LIST_COUNT:S = -0x1s

.field public static final MCH_PATH:Ljava/lang/String; = "telecom/mch.vcf"

.field public static final OCH_PATH:Ljava/lang/String; = "telecom/och.vcf"

.field public static final ORDER_BY_ALPHABETICAL:B = 0x1t

.field public static final ORDER_BY_DEFAULT:B = -0x1t

.field public static final ORDER_BY_INDEXED:B = 0x0t

.field public static final ORDER_BY_PHONETIC:B = 0x2t

.field public static final PB_PATH:Ljava/lang/String; = "telecom/pb.vcf"

.field public static final SEARCH_ATTR_NAME:B = 0x0t

.field public static final SEARCH_ATTR_NUMBER:B = 0x1t

.field public static final SEARCH_ATTR_SOUND:B = 0x2t

.field public static final SIM_CCH_PATH:Ljava/lang/String; = "SIM1/telecom/cch.vcf"

.field public static final SIM_ICH_PATH:Ljava/lang/String; = "SIM1/telecom/ich.vcf"

.field public static final SIM_MCH_PATH:Ljava/lang/String; = "SIM1/telecom/mch.vcf"

.field public static final SIM_OCH_PATH:Ljava/lang/String; = "SIM1/telecom/och.vcf"

.field public static final SIM_PB_PATH:Ljava/lang/String; = "SIM1/telecom/pb.vcf"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field public static final VCARD_ATTR_ADDR:J = 0x20L

.field public static final VCARD_ATTR_AGENT:J = 0x8000L

.field public static final VCARD_ATTR_BDAY:J = 0x10L

.field public static final VCARD_ATTR_CATEGORIES:J = 0x1000000L

.field public static final VCARD_ATTR_CLASS:J = 0x4000000L

.field public static final VCARD_ATTR_EMAIL:J = 0x100L

.field public static final VCARD_ATTR_FN:J = 0x2L

.field public static final VCARD_ATTR_GEO:J = 0x800L

.field public static final VCARD_ATTR_KEY:J = 0x400000L

.field public static final VCARD_ATTR_LABEL:J = 0x40L

.field public static final VCARD_ATTR_LOGO:J = 0x4000L

.field public static final VCARD_ATTR_MAILER:J = 0x200L

.field public static final VCARD_ATTR_N:J = 0x4L

.field public static final VCARD_ATTR_NICKNAME:J = 0x800000L

.field public static final VCARD_ATTR_NOTE:J = 0x20000L

.field public static final VCARD_ATTR_ORG:J = 0x10000L

.field public static final VCARD_ATTR_PHOTO:J = 0x8L

.field public static final VCARD_ATTR_PROID:J = 0x2000000L

.field public static final VCARD_ATTR_REV:J = 0x40000L

.field public static final VCARD_ATTR_ROLE:J = 0x2000L

.field public static final VCARD_ATTR_SORT_STRING:J = 0x8000000L

.field public static final VCARD_ATTR_SOUND:J = 0x80000L

.field public static final VCARD_ATTR_TEL:J = 0x80L

.field public static final VCARD_ATTR_TITLE:J = 0x1000L

.field public static final VCARD_ATTR_TZ:J = 0x400L

.field public static final VCARD_ATTR_UID:J = 0x200000L

.field public static final VCARD_ATTR_URL:J = 0x100000L

.field public static final VCARD_ATTR_VERSION:J = 0x1L

.field public static final VCARD_ATTR_X_IRMC_CALL_DATETIME:J = 0x10000000L

.field public static final VCARD_TYPE_21:B = 0x0t

.field public static final VCARD_TYPE_30:B = 0x1t


# instance fields
.field private final mClientHandler:Landroid/os/Handler;

.field private mConnectionState:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

.field private final mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

.field private mSessionHandler:Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V
    .locals 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mConnectionState:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    if-eqz p1, :cond_0

    .line 518
    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mClientHandler:Landroid/os/Handler;

    .line 520
    new-instance p2, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;

    invoke-direct {p2, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapClient;)V

    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSessionHandler:Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;

    .line 522
    new-instance p2, Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSessionHandler:Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;

    invoke-direct {p2, p1, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    return-void

    .line 515
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "BluetothDevice is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/client/pbap/BluetoothPbapClient;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/client/pbap/BluetoothPbapClient;IILjava/lang/Object;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroid/bluetooth/client/pbap/BluetoothPbapClient;ILjava/lang/Object;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
    .locals 0

    .line 76
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mConnectionState:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    return-object p1
.end method

.method private sendToClient(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 489
    invoke-direct {p0, p1, v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method private sendToClient(II)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, p1, p2, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method private sendToClient(IILjava/lang/Object;)V
    .locals 1

    .line 501
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mClientHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendToClient(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, p1, v0, p2}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 551
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->abort()V

    return-void
.end method

.method public connect()V
    .locals 0

    .line 530
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 0

    .line 544
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->stop()V

    return-void
.end method

.method public finalize()V
    .locals 0

    .line 535
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    if-eqz p0, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->stop()V

    :cond_0
    return-void
.end method

.method public getState()Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;
    .locals 0

    .line 555
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mConnectionState:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    return-object p0
.end method

.method public pullPhoneBook(Ljava/lang/String;)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 643
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result p0

    return p0
.end method

.method public pullPhoneBook(Ljava/lang/String;II)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 682
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result p0

    return p0
.end method

.method public pullPhoneBook(Ljava/lang/String;IILandroid/accounts/Account;)Z
    .locals 9

    if-eqz p4, :cond_0

    .line 705
    new-instance v8, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;-><init>(Ljava/lang/String;JBIILandroid/accounts/Account;)V

    .line 707
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v8}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 709
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result p0

    return p0
.end method

.method public pullPhoneBook(Ljava/lang/String;JB)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 660
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result p0

    return p0
.end method

.method public pullPhoneBook(Ljava/lang/String;JBII)Z
    .locals 8

    .line 730
    new-instance v7, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;-><init>(Ljava/lang/String;JBII)V

    .line 732
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v7}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public pullPhoneBookSize(Ljava/lang/String;)Z
    .locals 1

    .line 608
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    invoke-direct {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;-><init>(Ljava/lang/String;)V

    .line 611
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public pullVcardEntry(Ljava/lang/String;)Z
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 853
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardEntry(Ljava/lang/String;JB)Z

    move-result p0

    return p0
.end method

.method public pullVcardEntry(Ljava/lang/String;JB)Z
    .locals 1

    .line 869
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;-><init>(Ljava/lang/String;JB)V

    .line 870
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 747
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;B)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 761
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z
    .locals 8

    .line 838
    new-instance v7, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;-><init>(Ljava/lang/String;BBLjava/lang/String;II)V

    .line 840
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v7}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;BII)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    .line 798
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    .line 780
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public pullVcardListing(Ljava/lang/String;II)Z
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 815
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public pullVcardListingSize(Ljava/lang/String;)Z
    .locals 1

    .line 624
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    invoke-direct {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;-><init>(Ljava/lang/String;)V

    .line 627
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public setAuthResponse(Ljava/lang/String;)Z
    .locals 2

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setAuthResponse key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->setAuthResponse(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setPhoneBookFolderDown(Ljava/lang/String;)Z
    .locals 1

    .line 594
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    invoke-direct {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;-><init>(Ljava/lang/String;)V

    .line 595
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public setPhoneBookFolderRoot()Z
    .locals 2

    .line 567
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;-><init>(Z)V

    .line 568
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public setPhoneBookFolderUp()Z
    .locals 2

    .line 580
    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;-><init>(Z)V

    .line 581
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->mSession:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->makeRequest(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method
