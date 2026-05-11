.class Lcom/smartisanos/launcher/bb;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$100()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/eb;->b(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/eb;->Ic()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-static {}, Lcom/smartisanos/launcher/eb;->x()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Lcom/smartisanos/launcher/eb;->Kc()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Lcom/smartisanos/launcher/eb;->Jc()V

    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00f2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
