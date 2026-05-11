.class public Lcom/smartisanos/launcher/animations/a/u;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationRotateIcon.java"


# instance fields
.field private mBackgroundColor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/u;->mBackgroundColor:F

    .line 3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not use."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public me()V
    .locals 0

    return-void
.end method

.method public ne()V
    .locals 0

    return-void
.end method

.method public oe()V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method

.method public te()V
    .locals 0

    return-void
.end method
