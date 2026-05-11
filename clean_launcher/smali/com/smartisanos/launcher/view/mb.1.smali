.class public Lcom/smartisanos/launcher/view/mb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field public Pw:I

.field public Qw:I

.field final synthetic this$0:Lcom/smartisanos/launcher/view/nb;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/nb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/mb;->this$0:Lcom/smartisanos/launcher/view/nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sa(I)V
    .locals 1

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
    add-int/lit8 v0, p1, 0xf

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/view/mb;->Pw:I

    add-int/lit8 p1, p1, 0x10

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/view/mb;->Qw:I

    return-void
.end method
