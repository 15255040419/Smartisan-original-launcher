.class public Lcom/smartisanos/launcher/receiver/i;
.super Ljava/lang/Object;
.source "DataDumpReceiver.java"


# instance fields
.field private children:Ljava/util/List;

.field public info:Ljava/lang/String;

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/receiver/i;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/receiver/i;->info:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/receiver/i;->prefix:Ljava/lang/String;

    return-void
.end method
