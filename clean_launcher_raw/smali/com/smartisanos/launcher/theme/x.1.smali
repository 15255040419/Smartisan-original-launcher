.class Lcom/smartisanos/launcher/theme/x;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/x;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/x;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->finish()V

    return-void
.end method
