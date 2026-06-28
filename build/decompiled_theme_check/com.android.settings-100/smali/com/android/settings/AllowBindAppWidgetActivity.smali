.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCallingPackage:Ljava/lang/String;

.field private mClicked:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mProfile:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 57
    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "appWidgetId"

    .line 63
    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error binding widget with id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BIND_APPWIDGET"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "appWidgetId"

    .line 95
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    const-string v3, "appWidgetProviderProfile"

    .line 96
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 98
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    if-nez v3, :cond_0

    .line 99
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    :cond_0
    const-string v3, "appWidgetProvider"

    .line 102
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 105
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    iput v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 109
    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 110
    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    const-string p1, "BIND_APPWIDGET"

    const-string v0, "Error getting parameters"

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v1}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->finish()V

    return-void

    :cond_1
    const-string p1, ""

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x7f120145

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x7f120144

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 119
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v3, 0x7f1204fd

    .line 120
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v3, 0x1040000

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 122
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "layout_inflater"

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x1090036

    .line 126
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 127
    iget-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x10201d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 128
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v2, 0x7f120146

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 131
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 132
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 130
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 136
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 137
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 138
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/AllowBindAppWidgetActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/AllowBindAppWidgetActivity;->setResult(I)V

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
