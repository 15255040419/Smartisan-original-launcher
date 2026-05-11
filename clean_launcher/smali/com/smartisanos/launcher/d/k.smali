.class public Lcom/smartisanos/launcher/d/k;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private at:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public Qf()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.launcher3.DEEP_SHORTCUT"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "shortcut_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/smartisanos/launcher/d/k;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->isPinned()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/d/k;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getRank()I

    move-result p0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/launcher/d/k;->getRank()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-le p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-ge p0, p1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/d/k;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/d/k;->b(Lcom/smartisanos/launcher/d/k;)I

    move-result p0

    return p0
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRank()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    return p0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public isPinned()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/d/k;->at:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
