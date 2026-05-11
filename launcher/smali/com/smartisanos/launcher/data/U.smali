.class public Lcom/smartisanos/launcher/data/U;
.super Ljava/lang/Object;
.source "TransactionTask.java"


# instance fields
.field public Ur:[I

.field public Vr:[J

.field public b:Z

.field public i:I

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/data/U;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    iput v0, p1, Lcom/smartisanos/launcher/data/U;->i:I

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/U;->l:J

    iput-wide v0, p1, Lcom/smartisanos/launcher/data/U;->l:J

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/launcher/data/U;->b:Z

    iput-boolean v0, p1, Lcom/smartisanos/launcher/data/U;->b:Z

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/data/U;->Ur:[I

    iput-object v0, p1, Lcom/smartisanos/launcher/data/U;->Ur:[I

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/data/U;->Vr:[J

    iput-object p0, p1, Lcom/smartisanos/launcher/data/U;->Vr:[J

    return-void
.end method
