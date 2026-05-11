.class Lcom/smartisanos/launcher/theme/y;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/theme/v;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "getItemAtPosition return theme is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p2}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->c(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->a(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Z)Z

    .line 5
    new-instance p2, Landroid/content/Intent;

    iget-object p4, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    const-class p5, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p2, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object p4, p1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string p5, "extra_theme_package"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p4, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string p5, "extra_component_id"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    const-string p4, "extra_theme_name"

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/y;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    sget p1, Lcom/smartisanos/launcher/fb;->slide_in_from_right:I

    sget p2, Lcom/smartisanos/launcher/fb;->slide_out_to_left:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mAlreadyClicked is true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
