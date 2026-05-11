.class Lcom/smartisanos/launcher/ab;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic Gi:Lcom/smartisanos/launcher/data/ItemInfo;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ab;->Gi:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/_a;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/_a;-><init>(Lcom/smartisanos/launcher/ab;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    const/4 p0, 0x1

    return p0
.end method
