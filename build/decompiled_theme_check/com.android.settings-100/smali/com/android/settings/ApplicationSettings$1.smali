.class Lcom/android/settings/ApplicationSettings$1;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApplicationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationSettings;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    check-cast p2, Ljava/lang/String;

    .line 71
    iget-object p0, p0, Lcom/android/settings/ApplicationSettings$1;->this$0:Lcom/android/settings/ApplicationSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/ApplicationSettings;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
