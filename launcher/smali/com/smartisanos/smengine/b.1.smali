.class public final Lcom/smartisanos/smengine/b;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/c;


# direct methods
.method public constructor <init>(Lcom/smartisanos/smengine/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/b;->this$0:Lcom/smartisanos/smengine/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILaurelienribon/tweenengine/b;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/b;->this$0:Lcom/smartisanos/smengine/c;

    iget-object p0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x20

    if-eq p1, p2, :cond_3

    const/16 p2, 0x40

    if-eq p1, p2, :cond_2

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Cj()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Dj()V

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Ej()V

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Bj()V

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    goto :goto_0

    .line 7
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onEnd()V

    goto :goto_0

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    goto :goto_0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onBegin()V

    :goto_0
    return-void
.end method
