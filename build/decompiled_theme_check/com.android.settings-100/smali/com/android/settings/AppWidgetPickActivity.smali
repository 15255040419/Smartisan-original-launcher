.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/settings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/ActivityPicker;",
        "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
        "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
        ">;"
    }
.end annotation


# static fields
.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AppWidgetPickActivity"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    .locals 10

    const-string v0, " for provider: "

    const-string v1, "Can\'t load icon drawable 0x"

    const-string v2, "AppWidgetPickActivity"

    .line 97
    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 100
    iget v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    const/16 v7, 0xf0

    const/16 v8, 0xa0

    if-eq v4, v8, :cond_2

    const/16 v9, 0xd5

    if-eq v4, v9, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_0

    const/16 v7, 0x1e0

    if-eq v4, v7, :cond_3

    int-to-float v4, v4

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    const/16 v6, 0x78

    .line 127
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 129
    iget v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p0, v4, v6}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p0

    goto :goto_1

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v5, :cond_4

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_4
    new-instance p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 142
    iget-object p1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/AppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    move-result-object p0

    return-object p0
.end method

.method protected getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 92
    iget-object p0, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 156
    iget-object p2, p2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "appWidgetOptions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 177
    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 180
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 66
    new-instance v0, Lcom/android/settings/AppWidgetLoader;

    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/settings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    :goto_0
    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 191
    :goto_0
    iget v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
