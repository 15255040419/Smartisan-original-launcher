.class public Lcom/android/settings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppWidgetLoader$ItemConstructor;,
        Lcom/android/settings/AppWidgetLoader$LabelledItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/settings/AppWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AppWidgetAdapter"


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
            "TItem;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 51
    iput-object p3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    return-void
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "customSort"

    .line 148
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "categoryFilter"

    .line 153
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/AppWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 162
    :cond_0
    new-instance v0, Lcom/android/settings/AppWidgetLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppWidgetLoader$1;-><init>(Lcom/android/settings/AppWidgetLoader;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-nez v1, :cond_1

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v2
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TItem;>;IZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez p5, :cond_1

    .line 125
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v3, p4

    if-nez v3, :cond_1

    goto :goto_2

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AppWidgetLoader;->mItemConstructor:Lcom/android/settings/AppWidgetLoader$ItemConstructor;

    iget-object v4, p0, Lcom/android/settings/AppWidgetLoader;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 130
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 129
    :goto_1
    invoke-interface {v3, v4, v2, v5}, Lcom/android/settings/AppWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AppWidgetLoader$LabelledItem;

    .line 132
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "customInfo"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "AppWidgetAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 71
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    if-eqz v6, :cond_2

    .line 72
    instance-of v6, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v4, v2

    move-object v5, v4

    goto/16 :goto_6

    :cond_3
    const-string v5, "customExtras"

    .line 79
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_4

    const-string v0, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p2

    move-object v4, v2

    goto :goto_6

    .line 86
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v4, v5, :cond_8

    .line 97
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-eqz v3, :cond_7

    .line 98
    instance-of v3, v3, Landroid/os/Bundle;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 101
    :cond_7
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    move-object v5, p2

    move-object v4, v0

    goto :goto_6

    :cond_9
    :goto_5
    const-string p2, "EXTRA_CUSTOM_INFO not present."

    .line 65
    invoke-static {v1, p2}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    :goto_6
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p1

    .line 108
    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    return-void
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;I)V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/settings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 182
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    .line 183
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    return-void
.end method
