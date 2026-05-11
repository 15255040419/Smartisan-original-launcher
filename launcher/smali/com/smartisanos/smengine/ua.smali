.class public Lcom/smartisanos/smengine/ua;
.super Ljava/lang/Object;
.source "TKeyEvent.java"


# instance fields
.field private mAction:I

.field private mKeyCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/ua;->mAction:I

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/smengine/ua;->mKeyCode:I

    return-void
.end method

.method public getAction()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/ua;->mAction:I

    return p0
.end method

.method public getKeyCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/ua;->mKeyCode:I

    return p0
.end method
