.class Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;
.super Landroid/os/AsyncTask;
.source "SharedPreferencesLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPackageCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;-><init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 180
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 181
    aget-object p1, p1, v1

    .line 182
    iget-object v2, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {v2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$100(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 185
    :try_start_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/high16 v3, 0x400000

    .line 192
    :try_start_1
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 193
    iget-object v2, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-virtual {v2, v0, p1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 197
    :catch_1
    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$AsyncPackageCheck;->this$0:Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->access$200(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
