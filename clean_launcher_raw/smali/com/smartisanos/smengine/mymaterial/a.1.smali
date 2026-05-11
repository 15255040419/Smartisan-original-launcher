.class public Lcom/smartisanos/smengine/mymaterial/a;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "DrawMultiTimesMaterial.java"


# instance fields
.field private lW:I

.field private mW:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->bW:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->hW:Z

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->gW:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 2
    instance-of v0, p1, Lcom/smartisanos/launcher/view/Ia;

    const-string v1, "uOffsetXYZ"

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/Ia;

    .line 4
    invoke-virtual {p0, p3, p2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->n(Lcom/smartisanos/smengine/SceneNode;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 8
    iget p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    if-ne p1, v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/sa;->Wa(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Ia;->Yk()I

    move-result p1

    move v1, v4

    :goto_0
    if-ge v1, p1, :cond_8

    .line 11
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Ia;->Xa(I)Lcom/smartisanos/smengine/a/j;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/a/j;->g([F)[F

    .line 13
    iget v5, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-static {v5, v3, v6, v4}, Lcom/smartisanos/smengine/P;->glUniform3fv(II[FI)V

    .line 14
    :cond_1
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Ia;->Nb(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {p0, v4, v5}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 17
    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    :cond_2
    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_4
    instance-of v0, p1, Lcom/smartisanos/launcher/animations/a/y;

    const/16 v5, 0x1403

    const/4 v6, 0x4

    const v7, 0x8893

    const/16 v8, 0xc

    if-eqz v0, :cond_6

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/animations/a/y;

    .line 21
    invoke-virtual {p0, p3, p2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->n(Lcom/smartisanos/smengine/SceneNode;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    .line 24
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 25
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 26
    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 27
    iget p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    if-ne p1, v2, :cond_5

    .line 28
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/sa;->Wa(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    .line 29
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/y;->Yk()I

    move-result p1

    .line 30
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->qk()Ljava/nio/ShortBuffer;

    move-result-object p2

    move p3, v4

    :goto_1
    if-ge p3, p1, :cond_8

    .line 31
    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/animations/a/y;->Xa(I)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 32
    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/animations/a/y;->Wa(I)I

    move-result v2

    .line 33
    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/a/j;->g([F)[F

    .line 34
    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-static {v1, v3, v9, v4}, Lcom/smartisanos/smengine/P;->glUniform3fv(II[FI)V

    mul-int/2addr v2, v8

    .line 35
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-static {v7, v4}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    .line 37
    invoke-static {v6, v8, v5, p2}, Lcom/smartisanos/smengine/P;->glDrawElements(IIILjava/nio/Buffer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 38
    :cond_6
    instance-of v0, p1, Lcom/smartisanos/launcher/animations/a/z;

    if-eqz v0, :cond_8

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/animations/a/z;

    .line 40
    invoke-virtual {p0, p3, p2, v3, v4}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->n(Lcom/smartisanos/smengine/SceneNode;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->r(Lcom/smartisanos/smengine/SceneNode;)V

    .line 43
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Pt()V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 45
    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 46
    iget p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    if-ne p1, v2, :cond_7

    .line 47
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/f;->mShader:Lcom/smartisanos/smengine/sa;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/sa;->Wa(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    .line 48
    :cond_7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/a/z;->Yk()I

    move-result p1

    .line 49
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->qk()Ljava/nio/ShortBuffer;

    move-result-object p2

    move p3, v4

    :goto_2
    if-ge p3, p1, :cond_8

    .line 50
    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/animations/a/z;->Xa(I)Lcom/smartisanos/smengine/a/j;

    move-result-object v1

    .line 51
    invoke-virtual {v0, p3}, Lcom/smartisanos/launcher/animations/a/z;->Wa(I)I

    move-result v2

    .line 52
    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-virtual {v1, v9}, Lcom/smartisanos/smengine/a/j;->g([F)[F

    .line 53
    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/a;->lW:I

    iget-object v9, p0, Lcom/smartisanos/smengine/mymaterial/a;->mW:[F

    invoke-static {v1, v3, v9, v4}, Lcom/smartisanos/smengine/P;->glUniform3fv(II[FI)V

    mul-int/2addr v2, v8

    .line 54
    invoke-virtual {p2, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    invoke-static {v7, v4}, Lcom/smartisanos/smengine/P;->glBindBuffer(II)V

    .line 56
    invoke-static {v6, v8, v5, p2}, Lcom/smartisanos/smengine/P;->glDrawElements(IIILjava/nio/Buffer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method
