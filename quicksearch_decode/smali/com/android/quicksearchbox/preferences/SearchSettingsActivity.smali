.class public Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;
.super Lcom/android/quicksearchbox/BaseActivity;
.source "SearchSettingsActivity.java"


# instance fields
.field public e:Lsmartisan/widget/TitleBar;

.field public f:Lsmartisan/widget/ListContentItemSwitch;

.field public g:Lsmartisan/widget/ListContentItemSwitch;

.field public h:Lsmartisan/widget/ListContentItemSwitch;

.field public i:Lsmartisan/widget/ListContentItemSwitch;

.field public j:Lsmartisan/widget/ListContentItemText;

.field public k:Lsmartisan/widget/ListContentItemText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const v0, 0x7f080259

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TitleBar;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->e:Lsmartisan/widget/TitleBar;

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->e:Lsmartisan/widget/TitleBar;

    sget v1, Lsmartisan/widget/TitleBar;->u:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$a;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080219

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->f:Lsmartisan/widget/ListContentItemSwitch;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->f:Lsmartisan/widget/ListContentItemSwitch;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$b;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f08021e

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->g:Lsmartisan/widget/ListContentItemSwitch;

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->g:Lsmartisan/widget/ListContentItemSwitch;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$c;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$c;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f08024c

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->j:Lsmartisan/widget/ListContentItemText;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->j:Lsmartisan/widget/ListContentItemText;

    const v1, 0x7f100035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->j:Lsmartisan/widget/ListContentItemText;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$d;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080249

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemText;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->k:Lsmartisan/widget/ListContentItemText;

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->k:Lsmartisan/widget/ListContentItemText;

    const v1, 0x7f100110

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->k:Lsmartisan/widget/ListContentItemText;

    new-instance v1, Lb/a/a/k1/a;

    invoke-direct {v1, p0}, Lb/a/a/k1/a;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08021b

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->h:Lsmartisan/widget/ListContentItemSwitch;

    .line 15
    invoke-static {p0}, Lb/a/a/n1/h0;->e(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->h:Lsmartisan/widget/ListContentItemSwitch;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->h:Lsmartisan/widget/ListContentItemSwitch;

    const v1, 0x7f10018b

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->h:Lsmartisan/widget/ListContentItemSwitch;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$e;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$e;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f08021d

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->i:Lsmartisan/widget/ListContentItemSwitch;

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->i:Lsmartisan/widget/ListContentItemSwitch;

    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$f;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity$f;-><init>(Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0b001d

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const-string p1, "A170073"

    .line 5
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->f()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->f:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->g:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->h:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {}, Lb/a/a/c1/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;->i:Lsmartisan/widget/ListContentItemSwitch;

    invoke-static {}, Lb/a/a/c1/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
