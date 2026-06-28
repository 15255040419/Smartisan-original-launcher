.class Lcom/android/settings/AboutFragment$2;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AboutFragment;->showBugReportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AboutFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AboutFragment;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/settings/AboutFragment$2;->this$0:Lcom/android/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "ctl.start"

    const-string p2, "bugreport"

    .line 375
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p0, p0, Lcom/android/settings/AboutFragment$2;->this$0:Lcom/android/settings/AboutFragment;

    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/SettingsUncaughtExceptionHandler;->getInstance(Landroid/content/Context;)Lcom/android/settings/SettingsUncaughtExceptionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/SettingsUncaughtExceptionHandler;->reportLogs()V

    return-void
.end method
