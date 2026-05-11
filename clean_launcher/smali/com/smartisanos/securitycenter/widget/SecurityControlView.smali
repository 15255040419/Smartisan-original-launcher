.class public Lcom/smartisanos/securitycenter/widget/SecurityControlView;
.super Landroid/widget/RelativeLayout;
.source "SecurityControlView.java"


# instance fields
.field private Id:Lcom/smartisanos/securitycenter/b/g;

.field private Jd:Lcom/smartisanos/securitycenter/widget/a/s;

.field private Kd:Lcom/smartisanos/securitycenter/c/c;

.field private Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

.field private Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

.field private Nd:Landroid/view/View;

.field private Od:Landroid/view/View;

.field private Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

.field private Qd:Landroid/widget/TextView;

.field private Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

.field private Sd:Landroid/view/View;

.field private Td:Landroid/widget/Button;

.field private Ud:Landroid/view/View;

.field private Vd:Z

.field private Wd:Z

.field private Xd:Landroid/view/animation/Animation;

.field private Yd:Landroid/view/animation/Animation;

.field private Zd:I

.field private _d:Z

.field private ae:Z

.field private be:Z

.field private ce:Z

.field private de:Z

.field private ee:Z

.field private fe:Z

.field private ge:Z

.field private he:Lcom/smartisanos/securitycenter/d/q;

.field private ie:Lcom/smartisanos/securitycenter/d/s;

.field private je:Lcom/smartisanos/securitycenter/d/m;

.field private ke:Landroid/view/View$OnClickListener;

.field private ld:Landroid/widget/Button;

.field private le:Lcom/smartisanos/securitycenter/b/c;

.field private mContext:Landroid/content/Context;

.field private me:Landroid/database/ContentObserver;

.field private ne:Landroid/database/ContentObserver;

.field private oe:Lcom/smartisanos/securitycenter/b/d;

.field private pe:Lcom/smartisanos/securitycenter/b/h;

.field private qe:Lcom/smartisanos/securitycenter/b/h;

.field private re:Lcom/smartisanos/securitycenter/b/f;

.field private se:Lcom/smartisanos/securitycenter/b/h;

.field private te:Lcom/smartisanos/securitycenter/b/h;

.field private ue:Lcom/smartisanos/securitycenter/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Vd:Z

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Wd:Z

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xd:Landroid/view/animation/Animation;

    .line 8
    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Yd:Landroid/view/animation/Animation;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    .line 10
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ae:Z

    .line 11
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->be:Z

    .line 12
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    .line 13
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    .line 14
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ee:Z

    .line 15
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fe:Z

    .line 16
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ge:Z

    .line 17
    new-instance p2, Lcom/smartisanos/securitycenter/widget/h;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/h;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    .line 18
    new-instance p2, Lcom/smartisanos/securitycenter/widget/i;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/i;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->le:Lcom/smartisanos/securitycenter/b/c;

    .line 19
    new-instance p2, Lcom/smartisanos/securitycenter/widget/y;

    new-instance p3, Landroid/os/Handler;

    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/securitycenter/widget/y;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->me:Landroid/database/ContentObserver;

    .line 21
    new-instance p2, Lcom/smartisanos/securitycenter/widget/z;

    new-instance p3, Landroid/os/Handler;

    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/securitycenter/widget/z;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ne:Landroid/database/ContentObserver;

    .line 23
    new-instance p2, Lcom/smartisanos/securitycenter/widget/A;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/A;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->oe:Lcom/smartisanos/securitycenter/b/d;

    .line 24
    new-instance p2, Lcom/smartisanos/securitycenter/widget/n;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/n;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->pe:Lcom/smartisanos/securitycenter/b/h;

    .line 25
    new-instance p2, Lcom/smartisanos/securitycenter/widget/o;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/o;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qe:Lcom/smartisanos/securitycenter/b/h;

    .line 26
    new-instance p2, Lcom/smartisanos/securitycenter/widget/k;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/k;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->re:Lcom/smartisanos/securitycenter/b/f;

    .line 27
    new-instance p2, Lcom/smartisanos/securitycenter/widget/p;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/p;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->se:Lcom/smartisanos/securitycenter/b/h;

    .line 28
    new-instance p2, Lcom/smartisanos/securitycenter/widget/q;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/q;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->te:Lcom/smartisanos/securitycenter/b/h;

    .line 29
    new-instance p2, Lcom/smartisanos/securitycenter/widget/r;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/r;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ue:Lcom/smartisanos/securitycenter/b/i;

    .line 30
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->cv()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/smartisanos/securitycenter/export/R$layout;->security_control_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->initViews()V

    const/16 p1, 0x8

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic A(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->jv()V

    return-void
.end method

.method static synthetic B(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rv()V

    return-void
.end method

.method static synthetic C(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->nv()V

    return-void
.end method

.method static synthetic D(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result p0

    return p0
.end method

.method static synthetic E(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bv()V

    return-void
.end method

.method static synthetic F(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Id:Lcom/smartisanos/securitycenter/b/g;

    return-object p0
.end method

.method static synthetic G(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/d/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    return-object p0
.end method

.method static synthetic H(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/d/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    return-object p0
.end method

.method static synthetic I(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->vv()V

    return-void
.end method

.method static synthetic J(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Wd:Z

    return p0
.end method

.method static synthetic K(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    return p0
.end method

.method static synthetic L(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qe:Lcom/smartisanos/securitycenter/b/h;

    return-object p0
.end method

.method static synthetic M(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic N(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hv()V

    return-void
.end method

.method static synthetic O(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    return-void
.end method

.method static synthetic P(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sv()V

    return-void
.end method

.method public static synthetic Q(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ov()V

    return-void
.end method

.method public static synthetic R(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->iv()V

    return-void
.end method

.method private Xu()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fv()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ev()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->dv()Z

    move-result p0

    xor-int/2addr p0, v1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private Yu()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$dimen;->unlocker_width_pc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/smartisanos/securitycenter/export/R$dimen;->unlocker_area_operate_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Od:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private Zu()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDisplayChanged, display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityControlView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qv()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hv()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sv()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tv()V

    .line 8
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->jv()V

    :cond_1
    :goto_0
    return-void
.end method

.method private _b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Id:Lcom/smartisanos/securitycenter/b/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/smartisanos/securitycenter/b/g;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelByUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->vv()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tv()V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sv()V

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->uv()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rv()V

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Vd:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hide()V

    :cond_2
    return-void
.end method

.method private _u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->faceid_view_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->w(J)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_b(Z)V

    return-void
.end method

.method private ac(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->fade_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/widget/x;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/x;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private av()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->fp_tips_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ec(Z)V

    return-void
.end method

.method private bc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/securitycenter/c/b;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fe:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->slide_out_bottom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/widget/v;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/v;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private bv()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    if-nez v0, :cond_2

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_keyboard_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->oe:Lcom/smartisanos/securitycenter/b/d;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->a(Lcom/smartisanos/securitycenter/b/d;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ea()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->w(I)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_use_fingerprint:I

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 10
    :goto_0
    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->q(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private c(Landroid/content/res/Configuration;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 23
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenWidthDp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screenHeightDp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " densityDpi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " density "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecurityControlView"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/smartisanos/securitycenter/export/R$dimen;->unlocker_width_pc_limit_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 26
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ga()V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fe:Z

    .line 29
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bc(Z)V

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->yj()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_u()V

    .line 32
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->N()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ha()V

    .line 34
    iput-boolean v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fe:Z

    .line 35
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fc(Z)V

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->yj()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_u()V

    .line 38
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->O()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tv()V

    return-void
.end method

.method static synthetic c(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gc(Z)V

    return-void
.end method

.method private cc(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->slide_out_bottom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/widget/t;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/t;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/widget/a/s;->oa(Landroid/content/Context;)Lcom/smartisanos/securitycenter/widget/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    .line 2
    new-instance v0, Lcom/smartisanos/securitycenter/c/c;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/securitycenter/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Kd:Lcom/smartisanos/securitycenter/c/c;

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/d/q;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/securitycenter/d/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/d/s;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/securitycenter/d/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    .line 5
    new-instance v0, Lcom/smartisanos/securitycenter/d/m;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/securitycenter/d/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    return-void
.end method

.method static synthetic d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/UnlockerHintView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ac(Z)V

    return-void
.end method

.method private dc(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ld:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Td:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private dv()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->uj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/c/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Kd:Lcom/smartisanos/securitycenter/c/c;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fc(Z)V

    return-void
.end method

.method private ec(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->fade_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/smartisanos/securitycenter/widget/w;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/w;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ld:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 7
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Td:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method private ev()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->vj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/a/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->cc(Z)V

    return-void
.end method

.method private fc(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/securitycenter/c/b;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fe:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->slide_in_bottom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/widget/u;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/u;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private fv()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->wj()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic g(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->pe:Lcom/smartisanos/securitycenter/b/h;

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bc(Z)V

    return-void
.end method

.method private gc(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bv()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v2, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_use_fingerprint:I

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->q(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v0, Lcom/smartisanos/securitycenter/export/R$anim;->slide_in_bottom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/smartisanos/securitycenter/widget/s;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/s;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->show()V

    :goto_1
    return-void
.end method

.method private gv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/a/s;->yj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/d;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/widget/d;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/d/q;->postOnReady(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "setupFaceId skip"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->dc(Z)V

    return-void
.end method

.method static synthetic h(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result p0

    return p0
.end method

.method private hv()V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/widget/j;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/j;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->uv()V

    return-void
.end method

.method static synthetic i(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ge:Z

    return p1
.end method

.method private initViews()V
    .locals 4

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Nd:Landroid/view/View;

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_area_operate:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Od:Landroid/view/View;

    .line 3
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    .line 4
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_use_cloud:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_bottom_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    .line 6
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ld:Landroid/widget/Button;

    .line 7
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_use_pin:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Td:Landroid/widget/Button;

    .line 8
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_navigation_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ud:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Nd:Landroid/view/View;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Qd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ld:Landroid/widget/Button;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Td:Landroid/widget/Button;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ke:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->le:Lcom/smartisanos/securitycenter/b/c;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Lcom/smartisanos/securitycenter/b/c;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_expanded"

    .line 16
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->me:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nav_fixed_mode"

    .line 19
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ne:Landroid/database/ContentObserver;

    .line 20
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "init"

    .line 21
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tb(Ljava/lang/String;)Z

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->V()V

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Yu()V

    return-void
.end method

.method private isDestroyed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private iv()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ec(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ma()V

    move v1, v2

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gc(Z)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->xj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-direct {p0, v2}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fc(Z)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->la()V

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ev()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ja()V

    goto :goto_1

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->dv()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ia()V

    .line 16
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz v1, :cond_8

    const-string v0, "setupPin"

    .line 17
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rb(Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->nv()V

    goto :goto_2

    .line 19
    :cond_8
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hv()V

    :goto_2
    return-void
.end method

.method static synthetic j(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mv()V

    return-void
.end method

.method static synthetic j(Lcom/smartisanos/securitycenter/widget/SecurityControlView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    return p1
.end method

.method private jv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ee:Z

    if-eqz v0, :cond_0

    const-string v0, "startBiometricTips skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->av()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->show()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ee:Z

    const-string v0, "startBiometricTips"

    .line 6
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Sd:Landroid/view/View;

    return-object p0
.end method

.method private kv()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->te:Lcom/smartisanos/securitycenter/b/h;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/d/m;->a(Lcom/smartisanos/securitycenter/b/h;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    const-string v0, "startCloudVerify"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "startCloudVerify skip"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->yj()Z

    move-result p0

    return p0
.end method

.method private lv()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->be:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qe:Lcom/smartisanos/securitycenter/b/h;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/b/h;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->be:Z

    const-string v0, "startFaceVerify"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "startFaceVerify skip"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->dv()Z

    move-result p0

    return p0
.end method

.method private mv()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ae:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->se:Lcom/smartisanos/securitycenter/b/h;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/d/s;->a(Lcom/smartisanos/securitycenter/b/h;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ae:Z

    const-string v0, "startFpVerify"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "startFpVerify skip"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ev()Z

    move-result p0

    return p0
.end method

.method private nv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->pe:Lcom/smartisanos/securitycenter/b/h;

    invoke-interface {v0}, Lcom/smartisanos/securitycenter/b/h;->onStart()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    const-string v0, "startPinVerify"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "startPinVerify skip"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->xj()Z

    move-result p0

    return p0
.end method

.method private ov()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/a/s;->isSecurityOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ue:Lcom/smartisanos/securitycenter/b/i;

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Lcom/smartisanos/securitycenter/b/i;->f(I)V

    return-void

    :cond_1
    const-string v0, "startVerify"

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tb(Ljava/lang/String;)Z

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->pv()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->iv()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->V()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Yu()V

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    return-object p0
.end method

.method private pv()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    const-string v0, "startVerify"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qv()V

    return-void
.end method

.method private qv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ee:Z

    if-nez v0, :cond_0

    const-string v0, "stopBiometricTips skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->av()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Md:Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hide()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ee:Z

    const-string v0, "stopBiometricTips"

    .line 6
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ld:Landroid/widget/Button;

    return-object p0
.end method

.method private rb(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SecurityControlView"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-nez v0, :cond_0

    const-string v0, "stopCloudVerify skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/m;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    const-string v0, "stopCloudVerify"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method private sb(Ljava/lang/String;)V
    .locals 0

    const-string p0, "SecurityControlView"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->be:Z

    if-nez v0, :cond_0

    const-string v0, "stopFaceVerify skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/q;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->be:Z

    const-string v0, "stopFaceVerify"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic t(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ge:Z

    return p0
.end method

.method private tb(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput v3, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/securitycenter/c/b;->a(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iput v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/securitycenter/c/e;->b(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 7
    iput v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    goto :goto_0

    .line 8
    :cond_2
    iput v4, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    iget p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "updateDisplayMode(%s): %d -> %d"

    .line 10
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SecurityControlView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    if-eq v0, p0, :cond_3

    move v2, v4

    :cond_3
    return v2
.end method

.method private tv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ae:Z

    if-nez v0, :cond_0

    const-string v0, "stopFpVerify skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/s;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ae:Z

    const-string v0, "stopFpVerify"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_u()V

    return-void
.end method

.method private uv()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    if-nez v0, :cond_0

    const-string v0, "stopPinVerify skip"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->pe:Lcom/smartisanos/securitycenter/b/h;

    invoke-interface {v0}, Lcom/smartisanos/securitycenter/b/h;->onCancel()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    const-string v0, "stopPinVerify"

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ld:Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;

    return-object p0
.end method

.method private vv()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    const-string v0, "stopVerify"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Lcom/smartisanos/securitycenter/b/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->re:Lcom/smartisanos/securitycenter/b/f;

    return-object p0
.end method

.method private w(J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bv()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 4
    new-instance v0, Lcom/smartisanos/securitycenter/widget/g;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/g;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic x(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    return p0
.end method

.method private xj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/m;->isEnabled()Z

    move-result v0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/a/s;->xj()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic y(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    return p0
.end method

.method private yj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/q;->isEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v1}, Lcom/smartisanos/securitycenter/widget/a/s;->yj()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic z(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Td:Landroid/widget/Button;

    return-object p0
.end method

.method private zj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/s;->isEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v1}, Lcom/smartisanos/securitycenter/widget/a/s;->zj()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public V()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ud:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/securitycenter/c/d;->na(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$dimen;->unlocker_navbar_height_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Ud:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public W()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    return p0
.end method

.method public synthetic X()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->fv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    :cond_0
    return-void
.end method

.method public synthetic Y()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->bv()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->g(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->la()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->yj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_use_fingerprint:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->q(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic Z()V
    .locals 2

    const-string v0, "setupFaceId"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rb(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    const-string v1, "setupFaceId skip"

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->yj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zu()V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->lv()V

    return-void

    .line 7
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/smartisanos/securitycenter/b/g;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SecurityControlView"

    const-string p1, "Skip duplicated start"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ge:Z

    .line 8
    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Id:Lcom/smartisanos/securitycenter/b/g;

    .line 9
    iget-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ue:Lcom/smartisanos/securitycenter/b/i;

    invoke-virtual {p2, v0}, Lcom/smartisanos/securitycenter/widget/a/s;->a(Lcom/smartisanos/securitycenter/b/i;)V

    .line 10
    iget-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    invoke-virtual {p2, p1}, Lcom/smartisanos/securitycenter/d/m;->setActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->dc(Z)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    new-instance p2, Lcom/smartisanos/securitycenter/widget/e;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/e;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/securitycenter/widget/a/s;->g(Ljava/lang/Runnable;)V

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot start verity with null activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/securitycenter/d/m;->a(IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public synthetic aa()V
    .locals 2

    const-string v0, "setupFingerprint"

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rb(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_d:Z

    const-string v1, "setupFingerprint skip"

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->zj()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->de:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ce:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zd:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zu()V

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mv()V

    return-void

    .line 7
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sb(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic ba()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/widget/c;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/c;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 8
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_cancel:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_b(Z)V

    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_use_pin:I

    if-ne p1, v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tv()V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->nv()V

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    goto :goto_0

    .line 14
    :cond_1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->unlocker_use_cloud:I

    if-ne p1, v0, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->uv()V

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sv()V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->kv()V

    goto :goto_0

    .line 18
    :cond_2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->fingerprint_tips_view:I

    if-ne p1, v0, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qv()V

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->gv()V

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->hv()V

    :cond_3
    :goto_0
    return-void
.end method

.method public ca()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->T()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Rd:Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->T()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->_b(Z)V

    return-void
.end method

.method public da()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/securitycenter/widget/a/x;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/securitycenter/widget/a/x;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/widget/a/s;->a(Lcom/smartisanos/securitycenter/widget/a/s;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    invoke-virtual {v1}, Lcom/smartisanos/securitycenter/widget/a/s;->destroy()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Pd:Lcom/smartisanos/securitycenter/widget/UnlockerHintView;

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->destroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/a/s;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->me:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ne:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Kd:Lcom/smartisanos/securitycenter/c/c;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/c/c;->release()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Kd:Lcom/smartisanos/securitycenter/c/c;

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->sv()V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/q;->destroy()V

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tv()V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->ie:Lcom/smartisanos/securitycenter/d/s;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/s;->destroy()V

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->rv()V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->je:Lcom/smartisanos/securitycenter/d/m;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/d/m;->destroy()V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Nd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Vd:Z

    return-void
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Yd:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Yd:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Wd:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "configChanged"

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->tb(Ljava/lang/String;)Z

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Zu()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->c(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Jd:Lcom/smartisanos/securitycenter/widget/a/s;

    new-instance v2, Lcom/smartisanos/securitycenter/widget/f;

    invoke-direct {v2, p0}, Lcom/smartisanos/securitycenter/widget/f;-><init>(Lcom/smartisanos/securitycenter/widget/SecurityControlView;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/securitycenter/widget/a/s;->g(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xd:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->Xd:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public synthetic x(I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->he:Lcom/smartisanos/securitycenter/d/q;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityControlView;->qe:Lcom/smartisanos/securitycenter/b/h;

    invoke-virtual {p1, p0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/b/h;)V

    return-void
.end method
