.class public Lcom/smartisanos/launcher/view/lb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field public Aw:I

.field public Bw:I

.field public Cw:I

.field public Dw:I

.field public Ew:I

.field public Fw:I

.field public Gw:I

.field public Hw:I

.field public Iw:I

.field public Jw:I

.field public Kw:I

.field public Lw:I

.field public Mw:I

.field public Nw:I

.field public Ow:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/nb;

.field public tw:I

.field public uw:I

.field public vw:I

.field public ww:I

.field public xw:I

.field public yw:I

.field public zw:I


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/nb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/lb;->this$0:Lcom/smartisanos/launcher/view/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sa(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x96

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    :cond_3
    :goto_0
    add-int/lit8 p1, v0, 0x0

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->tw:I

    add-int/lit8 p1, v0, 0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->uw:I

    add-int/lit8 p1, v0, 0x2

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->xw:I

    add-int/lit8 p1, v0, 0x3

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->ww:I

    add-int/lit8 p1, v0, 0x4

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->vw:I

    add-int/lit8 p1, v0, 0x5

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Bw:I

    add-int/lit8 p1, v0, 0x6

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Cw:I

    add-int/lit8 p1, v0, 0x7

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Ew:I

    add-int/lit8 p1, v0, 0xb

    .line 9
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Fw:I

    add-int/lit8 v1, v0, 0xc

    .line 10
    iput v1, p0, Lcom/smartisanos/launcher/view/lb;->Gw:I

    .line 11
    iput v1, p0, Lcom/smartisanos/launcher/view/lb;->Hw:I

    .line 12
    iput v1, p0, Lcom/smartisanos/launcher/view/lb;->Iw:I

    add-int/lit8 v2, v0, 0x8

    .line 13
    iput v2, p0, Lcom/smartisanos/launcher/view/lb;->Aw:I

    add-int/lit8 v2, v0, 0x9

    .line 14
    iput v2, p0, Lcom/smartisanos/launcher/view/lb;->yw:I

    add-int/lit8 v2, v0, 0xa

    .line 15
    iput v2, p0, Lcom/smartisanos/launcher/view/lb;->Ow:I

    .line 16
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Dw:I

    .line 17
    iput v1, p0, Lcom/smartisanos/launcher/view/lb;->zw:I

    add-int/lit8 p1, v0, 0x1f

    .line 18
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Jw:I

    .line 19
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Kw:I

    add-int/lit8 p1, v0, 0x20

    .line 20
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Lw:I

    .line 21
    iput p1, p0, Lcom/smartisanos/launcher/view/lb;->Mw:I

    add-int/lit8 v0, v0, 0x21

    .line 22
    iput v0, p0, Lcom/smartisanos/launcher/view/lb;->Nw:I

    return-void
.end method
