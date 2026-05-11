.class Lcom/smartisanos/launcher/Wa;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/smartisanos/launcher/widget/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/Va;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/Va;-><init>(Lcom/smartisanos/launcher/Wa;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_0
    return-void
.end method
