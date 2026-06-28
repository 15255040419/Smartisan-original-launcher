.class public Lcom/android/settings/ApnEditorItemFragment;
.super Landroid/app/DialogFragment;
.source "ApnEditorItemFragment.java"


# static fields
.field private static final KEY_INPUT_CONTENT:Ljava/lang/String; = "input_content"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditor:Landroid/widget/EditText;

.field private mItem:Lcom/android/settings/TitleSummaryItem;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/TitleSummaryItem;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditorItemFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/ApnEditorItemFragment;->doApplyApn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ApnEditorItemFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorItemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00de

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0291

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    .line 84
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    invoke-virtual {v1}, Lcom/android/settings/TitleSummaryItem;->getInputMethodType()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/16 v2, 0x81

    goto :goto_0

    :cond_1
    move v2, v3

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 93
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 94
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/ApnEditorItemFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnEditorItemFragment$2;-><init>(Lcom/android/settings/ApnEditorItemFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private doApplyApn()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/ApnEditorItemFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditorItemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private reflectToShowAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 4

    .line 151
    :try_start_0
    const-class v0, Landroid/app/DialogFragment;

    const-string v1, "mDismissed"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 152
    const-class v1, Landroid/app/DialogFragment;

    const-string v2, "mShownByMe"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 156
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 157
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 159
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 165
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 162
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/ApnEditorItemFragment;->dismiss()V

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/TitleSummaryItem;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v2, "input_content"

    .line 56
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    .line 59
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditorItemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    .line 60
    invoke-virtual {v2}, Lcom/android/settings/TitleSummaryItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditorItemFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206c9

    new-instance v2, Lcom/android/settings/ApnEditorItemFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnEditorItemFragment$1;-><init>(Lcom/android/settings/ApnEditorItemFragment;)V

    .line 62
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ApnEditorItemFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 70
    iget-object p1, p0, Lcom/android/settings/ApnEditorItemFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 135
    iput-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    .line 136
    iput-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    .line 137
    iput-object v0, p0, Lcom/android/settings/ApnEditorItemFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "input_content"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 128
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment;->mItem:Lcom/android/settings/TitleSummaryItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TitleSummaryItem;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/ApnEditorItemFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ApnEditorItemFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ApnEditorItemFragment;->reflectToShowAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
