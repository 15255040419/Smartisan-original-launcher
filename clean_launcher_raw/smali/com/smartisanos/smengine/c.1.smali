.class public abstract Lcom/smartisanos/smengine/c;
.super Ljava/lang/Object;
.source "Animation.java"


# instance fields
.field protected kC:Ljava/lang/Object;

.field protected lC:[F

.field protected mC:I

.field protected mDuration:F

.field protected mIsStarted:Z

.field private mName:Ljava/lang/String;

.field protected mRepeatCount:I

.field protected mUserData:Ljava/lang/Byte;

.field protected nC:F

.field protected oC:F

.field protected pC:I

.field protected qC:Z

.field protected rC:Z

.field protected sC:Lcom/smartisanos/smengine/a;

.field protected final tC:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/c;->mC:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/c;->pC:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->mIsStarted:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->qC:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c;->rC:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/c;->tC:F

    return-void
.end method


# virtual methods
.method protected Gj()Laurelienribon/tweenengine/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected Hj()Laurelienribon/tweenengine/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public Ij()V
    .locals 0

    return-void
.end method

.method public Ja(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/c;->mC:I

    return-void
.end method

.method public Ka(I)Laurelienribon/tweenengine/n;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unknown ease type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Laurelienribon/tweenengine/a/x;->Lf:Laurelienribon/tweenengine/a/x;

    return-object p0

    .line 3
    :pswitch_1
    new-instance p0, Lcom/smartisanos/smengine/h;

    invoke-direct {p0}, Lcom/smartisanos/smengine/h;-><init>()V

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Laurelienribon/tweenengine/a/N;->Lf:Laurelienribon/tweenengine/a/N;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Laurelienribon/tweenengine/a/N;->OUT:Laurelienribon/tweenengine/a/N;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Laurelienribon/tweenengine/a/N;->IN:Laurelienribon/tweenengine/a/N;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Laurelienribon/tweenengine/a/J;->Lf:Laurelienribon/tweenengine/a/J;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Laurelienribon/tweenengine/a/J;->OUT:Laurelienribon/tweenengine/a/J;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Laurelienribon/tweenengine/a/J;->IN:Laurelienribon/tweenengine/a/J;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Laurelienribon/tweenengine/a/F;->Lf:Laurelienribon/tweenengine/a/F;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Laurelienribon/tweenengine/a/F;->OUT:Laurelienribon/tweenengine/a/F;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Laurelienribon/tweenengine/a/F;->IN:Laurelienribon/tweenengine/a/F;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Laurelienribon/tweenengine/a/v;->Lf:Laurelienribon/tweenengine/a/v;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Laurelienribon/tweenengine/a/t;->Lf:Laurelienribon/tweenengine/a/t;

    return-object p0

    .line 15
    :pswitch_d
    sget-object p0, Laurelienribon/tweenengine/a/t;->OUT:Laurelienribon/tweenengine/a/t;

    return-object p0

    .line 16
    :pswitch_e
    sget-object p0, Laurelienribon/tweenengine/a/t;->IN:Laurelienribon/tweenengine/a/t;

    return-object p0

    .line 17
    :pswitch_f
    sget-object p0, Laurelienribon/tweenengine/a/p;->Lf:Laurelienribon/tweenengine/a/p;

    return-object p0

    .line 18
    :pswitch_10
    sget-object p0, Laurelienribon/tweenengine/a/p;->OUT:Laurelienribon/tweenengine/a/p;

    return-object p0

    .line 19
    :pswitch_11
    sget-object p0, Laurelienribon/tweenengine/a/p;->IN:Laurelienribon/tweenengine/a/p;

    return-object p0

    .line 20
    :pswitch_12
    sget-object p0, Laurelienribon/tweenengine/a/l;->Lf:Laurelienribon/tweenengine/a/l;

    return-object p0

    .line 21
    :pswitch_13
    sget-object p0, Laurelienribon/tweenengine/a/l;->OUT:Laurelienribon/tweenengine/a/l;

    return-object p0

    .line 22
    :pswitch_14
    sget-object p0, Laurelienribon/tweenengine/a/l;->IN:Laurelienribon/tweenengine/a/l;

    return-object p0

    .line 23
    :pswitch_15
    sget-object p0, Laurelienribon/tweenengine/a/h;->Lf:Laurelienribon/tweenengine/a/h;

    return-object p0

    .line 24
    :pswitch_16
    sget-object p0, Laurelienribon/tweenengine/a/h;->OUT:Laurelienribon/tweenengine/a/h;

    return-object p0

    .line 25
    :pswitch_17
    sget-object p0, Laurelienribon/tweenengine/a/h;->IN:Laurelienribon/tweenengine/a/h;

    return-object p0

    .line 26
    :pswitch_18
    sget-object p0, Laurelienribon/tweenengine/a/d;->Lf:Laurelienribon/tweenengine/a/d;

    return-object p0

    .line 27
    :pswitch_19
    sget-object p0, Laurelienribon/tweenengine/a/d;->OUT:Laurelienribon/tweenengine/a/d;

    return-object p0

    .line 28
    :pswitch_1a
    sget-object p0, Laurelienribon/tweenengine/a/d;->IN:Laurelienribon/tweenengine/a/d;

    return-object p0

    .line 29
    :pswitch_1b
    sget-object p0, Laurelienribon/tweenengine/a/B;->Lf:Laurelienribon/tweenengine/a/B;

    return-object p0

    .line 30
    :pswitch_1c
    sget-object p0, Laurelienribon/tweenengine/a/B;->OUT:Laurelienribon/tweenengine/a/B;

    return-object p0

    .line 31
    :pswitch_1d
    sget-object p0, Laurelienribon/tweenengine/a/B;->IN:Laurelienribon/tweenengine/a/B;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/a;->a(Lcom/smartisanos/smengine/c;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/c;->qC:Z

    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/smengine/c;->rC:Z

    return p0
.end method

.method public o(F)V
    .locals 0

    return-void
.end method

.method public p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/smengine/c;->mUserData:Ljava/lang/Byte;

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/c;->mDuration:F

    const/4 v2, 0x3

    .line 3
    iput v2, p0, Lcom/smartisanos/smengine/c;->mC:I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/smartisanos/smengine/c;->mRepeatCount:I

    .line 5
    iput v1, p0, Lcom/smartisanos/smengine/c;->nC:F

    .line 6
    iput v1, p0, Lcom/smartisanos/smengine/c;->oC:F

    const/4 v3, -0x1

    .line 7
    iput v3, p0, Lcom/smartisanos/smengine/c;->pC:I

    .line 8
    iput-boolean v2, p0, Lcom/smartisanos/smengine/c;->mIsStarted:Z

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lcom/smartisanos/smengine/c;->qC:Z

    .line 10
    iput-boolean v3, p0, Lcom/smartisanos/smengine/c;->rC:Z

    .line 11
    iput-object v0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/c;->lC:[F

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDelay(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/c;->oC:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c;->mName:Ljava/lang/String;

    return-void
.end method
