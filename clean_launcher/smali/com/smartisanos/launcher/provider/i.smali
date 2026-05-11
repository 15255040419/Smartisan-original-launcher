.class public Lcom/smartisanos/launcher/provider/i;
.super Ljava/lang/Object;
.source "EventListWithDM.java"


# instance fields
.field public Es:Z

.field public Fs:Z

.field public Gs:Z

.field public Hs:J

.field public Is:Z

.field private Js:Z

.field public events:Ljava/util/ArrayList;

.field public progress:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Es:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Fs:Z

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Gs:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/smartisanos/launcher/provider/i;->progress:I

    .line 7
    iput v1, p0, Lcom/smartisanos/launcher/provider/i;->state:I

    const-wide/16 v2, -0x1

    .line 8
    iput-wide v2, p0, Lcom/smartisanos/launcher/provider/i;->Hs:J

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Is:Z

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Js:Z

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    .line 12
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Es:Z

    .line 13
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Fs:Z

    .line 14
    iput-boolean v0, p0, Lcom/smartisanos/launcher/provider/i;->Is:Z

    .line 15
    iput-wide v2, p0, Lcom/smartisanos/launcher/provider/i;->Hs:J

    .line 16
    iput v1, p0, Lcom/smartisanos/launcher/provider/i;->progress:I

    .line 17
    iput v1, p0, Lcom/smartisanos/launcher/provider/i;->state:I

    return-void
.end method


# virtual methods
.method public Lf()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/provider/i;->Js:Z

    return p0
.end method

.method public O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/provider/i;->Js:Z

    return-void
.end method
