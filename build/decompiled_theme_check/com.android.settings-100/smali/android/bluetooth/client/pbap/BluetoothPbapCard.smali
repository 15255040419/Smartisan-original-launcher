.class public Landroid/bluetooth/client/pbap/BluetoothPbapCard;
.super Ljava/lang/Object;
.source "BluetoothPbapCard.java"


# instance fields
.field public final N:Ljava/lang/String;

.field public final firstName:Ljava/lang/String;

.field public final handle:Ljava/lang/String;

.field public final lastName:Ljava/lang/String;

.field public final middleName:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->handle:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->N:Ljava/lang/String;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x5

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ";"

    .line 56
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    array-length p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p2, v2, :cond_1

    move-object p1, v3

    goto :goto_0

    :cond_1
    aget-object p1, v0, p1

    :goto_0
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->lastName:Ljava/lang/String;

    .line 59
    array-length p1, v0

    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    move-object p1, v3

    goto :goto_1

    :cond_2
    aget-object p1, v0, v2

    :goto_1
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->firstName:Ljava/lang/String;

    .line 60
    array-length p1, v0

    const/4 v2, 0x3

    if-ge p1, v2, :cond_3

    move-object p1, v3

    goto :goto_2

    :cond_3
    aget-object p1, v0, p2

    :goto_2
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->middleName:Ljava/lang/String;

    .line 61
    array-length p1, v0

    const/4 p2, 0x4

    if-ge p1, p2, :cond_4

    move-object p1, v3

    goto :goto_3

    :cond_4
    aget-object p1, v0, v2

    :goto_3
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->prefix:Ljava/lang/String;

    .line 62
    array-length p1, v0

    if-ge p1, v1, :cond_5

    goto :goto_4

    :cond_5
    aget-object v3, v0, p2

    :goto_4
    iput-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static jsonifyVcardEntry(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 10

    const-string v0, "is_primary"

    const-string v1, "label"

    const-string/jumbo v2, "type"

    .line 85
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v4

    const-string v5, "formatted"

    .line 89
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getFormatted()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "family"

    .line 90
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "given"

    .line 91
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "middle"

    .line 92
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "prefix"

    .line 93
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "suffix"

    .line 94
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 105
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 106
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "number"

    .line 108
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary()Z

    move-result v6

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "phones"

    .line 115
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :catch_1
    :cond_1
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 127
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$EmailData;

    .line 128
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 129
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "address"

    .line 130
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$EmailData;->isPrimary()Z

    move-result v5

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string p0, "emails"

    .line 137
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :catch_2
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "handle"

    .line 70
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->handle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "N"

    .line 71
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastName"

    .line 72
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "firstName"

    .line 73
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "middleName"

    .line 74
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "prefix"

    .line 75
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "suffix"

    .line 76
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
