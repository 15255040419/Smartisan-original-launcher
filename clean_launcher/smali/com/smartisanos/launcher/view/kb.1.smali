.class public Lcom/smartisanos/launcher/view/kb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field public bw:I

.field public cw:I

.field public dw:I

.field public ew:I

.field public fw:I

.field public hw:I

.field public iw:I

.field public jw:I

.field public kw:I

.field public lw:I

.field public mw:I

.field public nw:I

.field public ow:I

.field public pw:I

.field public qw:I

.field public rw:I

.field public sw:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/nb;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/nb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/kb;->this$0:Lcom/smartisanos/launcher/view/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sa(I)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x32

    :goto_0
    add-int/lit8 v0, p1, 0x9

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->bw:I

    add-int/lit8 v0, p1, 0xa

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->cw:I

    add-int/lit8 v0, p1, 0xb

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->dw:I

    add-int/lit8 v0, p1, 0xc

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->ew:I

    add-int/lit8 v1, p1, 0xd

    .line 5
    iput v1, p0, Lcom/smartisanos/launcher/view/kb;->fw:I

    add-int/lit8 v2, p1, 0xe

    .line 6
    iput v2, p0, Lcom/smartisanos/launcher/view/kb;->hw:I

    add-int/lit8 v3, p1, 0xf

    .line 7
    iput v3, p0, Lcom/smartisanos/launcher/view/kb;->iw:I

    .line 8
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->qw:I

    .line 9
    iput v1, p0, Lcom/smartisanos/launcher/view/kb;->rw:I

    .line 10
    iput v2, p0, Lcom/smartisanos/launcher/view/kb;->sw:I

    add-int/lit8 v0, p1, 0x17

    .line 11
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->jw:I

    add-int/lit8 v0, p1, 0x18

    .line 12
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->kw:I

    add-int/lit8 v0, p1, 0x19

    .line 13
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->lw:I

    add-int/lit8 v0, p1, 0x1a

    .line 14
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->mw:I

    add-int/lit8 v0, p1, 0x1b

    .line 15
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->pw:I

    add-int/lit8 v0, p1, 0x1c

    .line 16
    iput v0, p0, Lcom/smartisanos/launcher/view/kb;->nw:I

    add-int/lit8 p1, p1, 0x1e

    .line 17
    iput p1, p0, Lcom/smartisanos/launcher/view/kb;->ow:I

    return-void
.end method
