.class public Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;
.super Landroid/widget/LinearLayout;
.source "SecurityKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private kd:Ljava/lang/String;

.field private ld:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

.field private md:Landroid/widget/Button;

.field private nd:Landroid/widget/Button;

.field private od:[Landroid/widget/Button;

.field private pd:Landroid/widget/ViewSwitcher;

.field private qd:I

.field private rd:I

.field private sd:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, ""

    .line 5
    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->kd:Ljava/lang/String;

    const/4 p2, 0x6

    .line 6
    iput p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    .line 8
    iget p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    new-array p2, p2, [C

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    .line 9
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/smartisanos/securitycenter/export/R$layout;->security_control_keyboard:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->initViews()V

    return-void
.end method

.method private Tu()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->Wu()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    iget p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smartisanos/securitycenter/b/d;->a([C)V

    :cond_0
    return-void
.end method

.method private Uu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/smartisanos/securitycenter/b/d;->l()V

    :cond_0
    return-void
.end method

.method private Vu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v1}, Lcom/smartisanos/securitycenter/b/d;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Wu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_back:I

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    iget v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    iget v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    add-int/lit8 p1, p1, 0x30

    int-to-char p0, p1

    aput-char p0, v0, v1

    :cond_1
    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->ld:Landroid/widget/Button;

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_back:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->md:Landroid/widget/Button;

    .line 3
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_simple_verify:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->nd:Landroid/widget/Button;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/Button;

    .line 4
    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_0:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_1:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_2:I

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_4:I

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_5:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_6:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_7:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_8:I

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_9:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->od:[Landroid/widget/Button;

    .line 10
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_right_bottom_switcher:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    move v0, v2

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->od:[Landroid/widget/Button;

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 12
    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->od:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->ld:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->md:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->nd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method

.method private pj()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/smartisanos/securitycenter/b/d;->onCancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public T()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->Wu()V

    return-void
.end method

.method public a(Lcom/smartisanos/securitycenter/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->mOnKeyListener:Lcom/smartisanos/securitycenter/b/d;

    return-void
.end method

.method public g(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->od:[Landroid/widget/Button;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->nd:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_cancel:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pj()V

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/smartisanos/securitycenter/export/R$id;->keyboard_simple_verify:I

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->Uu()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    .line 7
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->e(Landroid/view/View;)V

    .line 8
    iget p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    if-eq v0, p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->Tu()V

    .line 10
    :cond_2
    iget p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    if-ne p1, v0, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->Vu()V

    :cond_3
    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->kd:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->kd:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->pd:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->nd:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public w(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 3
    iput p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->qd:I

    .line 4
    iget v1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    if-le v1, p1, :cond_1

    .line 5
    iput p1, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->rd:I

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/SecurityKeyboardView;->sd:[C

    return-void
.end method
