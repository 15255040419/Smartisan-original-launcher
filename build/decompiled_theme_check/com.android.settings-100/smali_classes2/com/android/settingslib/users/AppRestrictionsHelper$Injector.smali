.class Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AppRestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    .line 396
    iput-object p2, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    .line 412
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method getInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method
