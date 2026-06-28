.class Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardListing"


# instance fields
.field mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 43
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 49
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "card"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Landroid/bluetooth/client/pbap/BluetoothPbapCard;

    const-string v1, "handle"

    const/4 v2, 0x0

    .line 51
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    .line 52
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothPbapVcardListing"

    const-string v0, "XML parser error when parsing XML"

    .line 59
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapCard;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    return-object p0
.end method
