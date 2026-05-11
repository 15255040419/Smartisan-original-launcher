.class public Lcom/smartisanos/launcher/view/Ia;
.super Lcom/smartisanos/smengine/SceneNode;
.source "DrawMultiTimesScreenNode.java"


# instance fields
.field private PG:[Lcom/smartisanos/smengine/a/j;

.field private QG:I

.field private qM:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-array p1, p2, [Lcom/smartisanos/smengine/a/j;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ia;->PG:[Lcom/smartisanos/smengine/a/j;

    .line 3
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ia;->qM:[Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/smartisanos/launcher/view/Ia;->QG:I

    return-void
.end method


# virtual methods
.method public Nb(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ia;->qM:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public Xa(I)Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ia;->PG:[Lcom/smartisanos/smengine/a/j;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public Yk()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/Ia;->QG:I

    return p0
.end method

.method public b(ILcom/smartisanos/smengine/a/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ia;->PG:[Lcom/smartisanos/smengine/a/j;

    aput-object p2, p0, p1

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ia;->qM:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method
