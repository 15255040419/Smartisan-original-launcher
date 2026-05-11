.class Landroid/content/pm/a;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationManager.java"


# instance fields
.field final synthetic this$0:Landroid/content/pm/ApplicationManager;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/pm/a;->this$0:Landroid/content/pm/ApplicationManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/content/pm/a;->this$0:Landroid/content/pm/ApplicationManager;

    invoke-static {p0, p2, p1}, Landroid/content/pm/ApplicationManager;->access$000(Landroid/content/pm/ApplicationManager;ILjava/lang/String;)V

    return-void
.end method
