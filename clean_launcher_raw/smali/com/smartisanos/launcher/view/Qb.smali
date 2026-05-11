.class public Lcom/smartisanos/launcher/view/Qb;
.super Ljava/lang/Object;
.source "MultiSelectCreateFolderDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static Fj:Landroid/app/AlertDialog;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Dj:Ljava/util/ArrayList;

.field private Ej:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/Qb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/Qb;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/Qb;->Ej:Z

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Qb;->Dj:Ljava/util/ArrayList;

    return-void
.end method

.method private Kx()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/Pb;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/Pb;-><init>(Lcom/smartisanos/launcher/view/Qb;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Qb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/Qb;->Ej:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/Qb;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/Qb;->Ej:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Qb;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/view/Qb;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Qb;->Dj:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/view/Qb;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/Qb;->Kx()Lcom/smartisanos/smengine/n;

    move-result-object p0

    return-object p0
.end method

.method public static li()V
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/launcher/ob;->toast_multi_create_folder_fail:I

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Bb;->h(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/view/Qb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "MultiSelectCreateFolderDialog !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->c(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    sget v1, Lcom/smartisanos/launcher/ob;->ok:I

    new-instance v2, Lcom/smartisanos/launcher/view/Kb;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/Kb;-><init>(Lcom/smartisanos/launcher/view/Qb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    sget v1, Lcom/smartisanos/launcher/ob;->uninstall_app_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/ec;->Mp()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v9, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 9
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v4, v10, :cond_4

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v12

    if-eqz v12, :cond_0

    move v5, v11

    :cond_0
    if-nez v6, :cond_1

    .line 12
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v11

    :cond_1
    if-nez v7, :cond_2

    .line 13
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v12

    if-eqz v12, :cond_2

    move v7, v11

    .line 14
    :cond_2
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v11

    if-nez v11, :cond_3

    add-int/lit8 v8, v8, 0x1

    if-nez v9, :cond_3

    .line 15
    iget-object v9, v10, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-eqz v5, :cond_9

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 16
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_with_app_shortcut_and_folder:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    .line 17
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_with_app_and_folder:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    if-eqz v7, :cond_7

    .line 18
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_with_shortcut_and_folder:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    if-nez v7, :cond_8

    .line 19
    sget-object v4, Lcom/smartisanos/launcher/view/Qb;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "error. multi select cell is error with creating folder 2"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v3

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    .line 21
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_with_app_and_shortcut:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    if-nez v7, :cond_b

    .line 22
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_only_application:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_b
    if-nez v6, :cond_c

    if-eqz v7, :cond_c

    .line 23
    sget v2, Lcom/smartisanos/launcher/ob;->multi_create_folder_only_shortcut:I

    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    if-nez v6, :cond_d

    if-nez v7, :cond_d

    .line 24
    sget-object v4, Lcom/smartisanos/launcher/view/Qb;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "error. multi select cell is error with creating folder 1"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v3

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    sget v1, Lcom/smartisanos/launcher/ob;->cancel:I

    new-instance v2, Lcom/smartisanos/launcher/view/Lb;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/Lb;-><init>(Lcom/smartisanos/launcher/view/Qb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    new-instance v1, Lcom/smartisanos/launcher/view/Mb;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Mb;-><init>(Lcom/smartisanos/launcher/view/Qb;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    new-instance v1, Lcom/smartisanos/launcher/view/Nb;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/Nb;-><init>(Lcom/smartisanos/launcher/view/Qb;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/J;->a(Landroid/app/AlertDialog;)V

    .line 32
    sget-object p0, Lcom/smartisanos/launcher/view/Qb;->Fj:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
