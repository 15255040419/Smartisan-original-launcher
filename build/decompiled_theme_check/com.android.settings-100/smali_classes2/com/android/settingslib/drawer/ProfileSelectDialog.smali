.class public Lcom/android/settingslib/drawer/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_SELECTED_TILE:Ljava/lang/String; = "selectedTile"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ProfileSelectDialog"


# instance fields
.field private mSelectedTile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    .line 42
    new-instance v0, Lcom/android/settingslib/drawer/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "selectedTile"

    .line 44
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "select_profile"

    .line 46
    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    .line 76
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 77
    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_3

    .line 82
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 83
    sget-boolean v1, Lcom/android/settingslib/drawer/ProfileSelectDialog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete the user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileSelectDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 71
    iget-object p2, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const v0, 0x8000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object p0, p0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selectedTile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    iput-object p1, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/drawer/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-static {v1, p1, v2}, Lcom/android/settingslib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object p1

    .line 61
    sget v1, Lcom/android/settingslib/R$string;->choose_profile:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
