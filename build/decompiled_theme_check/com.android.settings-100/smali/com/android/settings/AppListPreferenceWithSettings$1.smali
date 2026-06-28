.class Lcom/android/settings/AppListPreferenceWithSettings$1;
.super Ljava/lang/Object;
.source "AppListPreferenceWithSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppListPreferenceWithSettings;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppListPreferenceWithSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AppListPreferenceWithSettings;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 32
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-static {v0}, Lcom/android/settings/AppListPreferenceWithSettings;->access$000(Lcom/android/settings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    iget-object p0, p0, Lcom/android/settings/AppListPreferenceWithSettings$1;->this$0:Lcom/android/settings/AppListPreferenceWithSettings;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
