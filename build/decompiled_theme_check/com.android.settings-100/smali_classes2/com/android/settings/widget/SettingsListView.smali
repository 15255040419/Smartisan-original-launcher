.class public Lcom/android/settings/widget/SettingsListView;
.super Landroid/widget/ListView;
.source "SettingsListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x2

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lsmartisanos/api/ViewSmt;->setDrawScrollBar(Landroid/view/View;Z)V

    .line 34
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
