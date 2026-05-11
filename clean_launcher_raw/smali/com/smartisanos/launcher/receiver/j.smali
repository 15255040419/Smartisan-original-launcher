.class Lcom/smartisanos/launcher/receiver/j;
.super Ljava/lang/Object;
.source "DataSyncReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ms:Ljava/lang/String;

.field final synthetic Ns:Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataSyncReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataSyncReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/j;->this$0:Lcom/smartisanos/launcher/receiver/DataSyncReceiver;

    iput-object p2, p0, Lcom/smartisanos/launcher/receiver/j;->Ms:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/receiver/j;->Ns:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/j;->Ms:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/j;->Ns:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/theme/X;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
