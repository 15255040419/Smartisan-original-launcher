.class public Lcom/android/settings/wifi/AccessPointEditorDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccessPointEditorDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContent:Ljava/lang/CharSequence;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditor:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mTag:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private createDialogView(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00de

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0291

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    .line 84
    iget v1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTag:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->setHintForEditor()V

    .line 104
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isDnsValid(Ljava/lang/String;)Z
    .locals 0

    .line 248
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isGatewayValid(Ljava/lang/String;)Z
    .locals 0

    .line 224
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInputContentValid(Ljava/lang/String;)Z
    .locals 3

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTag:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTag:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isProxyPacValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 207
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isDnsValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 205
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isDnsValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 203
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isNetworkPrefixLengthValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 201
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isGatewayValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 199
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isIpAddressValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 195
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isProxyExclusionValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 193
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isProxyPortValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 191
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isProxyHostValid(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isIpAddressValid(Ljava/lang/String;)Z
    .locals 1

    .line 214
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 216
    sget-object p1, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, ""

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isNetworkPrefixLengthValid(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 234
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method private isProxyExclusionValid(Ljava/lang/String;)Z
    .locals 4

    const-string p0, ","

    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 276
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 277
    sget-object v3, Lcom/android/settings/ProxySelector;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isProxyHostValid(Ljava/lang/String;)Z
    .locals 0

    .line 256
    sget-object p0, Lcom/android/settings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isProxyPacValid(Ljava/lang/String;)Z
    .locals 0

    .line 285
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isProxyPortValid(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method private setHintForEditor()V
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTag:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1217eb

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1217e9

    goto :goto_0

    :pswitch_2
    const v0, 0x7f12182e

    goto :goto_0

    :pswitch_3
    const v0, 0x7f121802

    goto :goto_0

    :pswitch_4
    const v0, 0x7f12180e

    goto :goto_0

    :pswitch_5
    const v0, 0x7f120fb4

    goto :goto_0

    :pswitch_6
    const v0, 0x7f120fb8

    goto :goto_0

    :pswitch_7
    const v0, 0x7f120fb6

    :goto_0
    if-eq v0, v1, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSaveButtonEnableState()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->isInputContentValid(Ljava/lang/String;)Z

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 176
    new-instance v2, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;-><init>(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->updateSaveButtonEnableState()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public init(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTag:I

    .line 48
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 49
    iput-object p3, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mContent:Ljava/lang/CharSequence;

    .line 50
    iput-object p4, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 56
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mTitle:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mContent:Ljava/lang/CharSequence;

    .line 58
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->createDialogView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;-><init>(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)V

    const v1, 0x7f121858

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1203dd

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->updateSaveButtonEnableState()V

    .line 72
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 149
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 154
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
