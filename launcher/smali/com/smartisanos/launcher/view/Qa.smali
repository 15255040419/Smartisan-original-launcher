.class public Lcom/smartisanos/launcher/view/Qa;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"


# static fields
.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field ig:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private ov:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Qa;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Qa;->ov:Z

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Qa;->mContext:Landroid/content/Context;

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Qa;->ov:Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Qa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Qa;->ov:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Qa;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Qa;->ov:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/view/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "showEditPageTitleDialog is not null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/b/ka;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget v2, Lcom/smartisanos/launcher/ob;->enter_page_title:I

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/smartisanos/launcher/view/b/t;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->Wr()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget v2, Lcom/smartisanos/launcher/ob;->enter_folder_page_title:I

    goto :goto_0

    :cond_3
    const-string v0, ""

    move v2, v1

    .line 9
    :goto_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Qa;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 11
    sget v5, Lcom/smartisanos/launcher/mb;->pre_title_layout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 12
    sget v4, Lcom/smartisanos/launcher/kb;->Zi:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 13
    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qa;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/lb;->editText_max_length:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 15
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_4
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 18
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 19
    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 20
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_5

    .line 21
    sget v0, Lcom/smartisanos/launcher/ob;->page_title_change_hint:I

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 22
    :cond_5
    sget v0, Lcom/smartisanos/launcher/kb;->_i:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 23
    new-instance v1, Lcom/smartisanos/launcher/view/Nc;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/Qa;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/smartisanos/launcher/view/Nc;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    new-instance v1, Lcom/smartisanos/launcher/view/Ja;

    invoke-direct {v1, p0, v4}, Lcom/smartisanos/launcher/view/Ja;-><init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qa;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ib;->dialog_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v12, v0

    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    move v9, v12

    move v10, v12

    move v11, v12

    .line 28
    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ob;->ok:I

    new-instance v2, Lcom/smartisanos/launcher/view/Oa;

    invoke-direct {v2, p0, v4, p1}, Lcom/smartisanos/launcher/view/Oa;-><init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/smartisanos/launcher/ob;->cancel:I

    new-instance v1, Lcom/smartisanos/launcher/view/Ma;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Ma;-><init>(Lcom/smartisanos/launcher/view/Qa;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/launcher/view/La;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/La;-><init>(Lcom/smartisanos/launcher/view/Qa;)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/smartisanos/launcher/view/Ka;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/Ka;-><init>(Lcom/smartisanos/launcher/view/Qa;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/J;->a(Landroid/app/AlertDialog;)V

    .line 35
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 36
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Qa;->ig:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 37
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_6

    .line 38
    new-instance p1, Lcom/smartisanos/launcher/view/Pa;

    invoke-direct {p1, p0, v4}, Lcom/smartisanos/launcher/view/Pa;-><init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method
