.class public Lcom/smartisanos/launcher/animations/a/w;
.super Lcom/smartisanos/launcher/animations/a/i;
.source "PageScrollAnimationSplitIcon.java"


# instance fields
.field private mBackgroundColor:F

.field private vp:F

.field private final wp:F

.field private final xp:F

.field private final yp:F

.field private zp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->vp:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->wp:F

    const/high16 v0, 0x42a00000    # 80.0f

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->xp:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->yp:F

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->zp:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    iput v0, p0, Lcom/smartisanos/launcher/animations/a/w;->mBackgroundColor:F

    .line 8
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
