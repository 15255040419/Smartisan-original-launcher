.class Lcom/smartisanos/launcher/theme/J;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/theme/L;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/J;->this$1:Lcom/smartisanos/launcher/theme/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/J;->this$1:Lcom/smartisanos/launcher/theme/L;

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/J;->this$1:Lcom/smartisanos/launcher/theme/L;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/L;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->a(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Z)V

    return-void
.end method
