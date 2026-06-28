.class Landroid/content/pm/ApplicationManager$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/ApplicationManager;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/content/pm/ApplicationManager$PackageDeleteObserver;->this$0:Landroid/content/pm/ApplicationManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
