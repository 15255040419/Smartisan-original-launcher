.class Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;
.super Landroid/os/Handler;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionHandler"
.end annotation


# instance fields
.field private final mClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapClient;)V
    .locals 1

    .line 387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 388
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    if-nez p0, :cond_0

    return-void

    .line 400
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0xcc

    .line 461
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0xcb

    .line 457
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 481
    :pswitch_2
    sget-object p1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/16 p1, 0xca

    .line 482
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 476
    :pswitch_3
    sget-object p1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/16 p1, 0xc9

    .line 477
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 472
    :pswitch_4
    sget-object p1, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    goto/16 :goto_0

    .line 403
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 405
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v0, :cond_1

    const/16 p1, 0x69

    .line 406
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 407
    :cond_1
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v0, :cond_2

    const/16 p1, 0x6a

    .line 408
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 409
    :cond_2
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    if-eqz v0, :cond_3

    const/16 p1, 0x66

    .line 410
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 411
    :cond_3
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    if-eqz v0, :cond_4

    const/16 p1, 0x67

    .line 412
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 413
    :cond_4
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    if-eqz v0, :cond_5

    const/16 p1, 0x68

    .line 414
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 415
    :cond_5
    instance-of p1, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    if-eqz p1, :cond_b

    const/16 p1, 0x65

    .line 416
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    .line 424
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    .line 426
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v0, :cond_6

    .line 427
    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->getSize()I

    move-result p1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BluetoothPbapRequestPullPhoneBookSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huangchongyu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 429
    invoke-static {p0, v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapClient;II)V

    goto :goto_0

    .line 431
    :cond_6
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v0, :cond_7

    .line 432
    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;->getSize()I

    move-result p1

    const/4 v0, 0x6

    .line 433
    invoke-static {p0, v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapClient;II)V

    goto :goto_0

    .line 435
    :cond_7
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    if-eqz v0, :cond_8

    .line 436
    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    const/4 v0, 0x2

    .line 437
    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->getNewMissedCalls()I

    move-result v1

    .line 438
    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->getList()Ljava/util/ArrayList;

    move-result-object p1

    .line 437
    invoke-static {p0, v0, v1, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapClient;IILjava/lang/Object;)V

    goto :goto_0

    .line 440
    :cond_8
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    if-eqz v0, :cond_9

    .line 441
    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    const/4 v0, 0x3

    .line 442
    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->getNewMissedCalls()I

    move-result v1

    .line 443
    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->getList()Ljava/util/ArrayList;

    move-result-object p1

    .line 442
    invoke-static {p0, v0, v1, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapClient;IILjava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_9
    instance-of v0, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    if-eqz v0, :cond_a

    .line 446
    check-cast p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    const/4 v0, 0x4

    .line 447
    invoke-virtual {p1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->getVcard()Lcom/android/vcard/VCardEntry;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$300(Landroid/bluetooth/client/pbap/BluetoothPbapClient;ILjava/lang/Object;)V

    goto :goto_0

    .line 449
    :cond_a
    instance-of p1, p1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    .line 450
    invoke-static {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    :cond_b
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
