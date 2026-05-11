.class public final enum Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
.super Ljava/lang/Enum;
.source "DatabaseUpdater.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum XZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum YZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum _Z:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum aaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum baa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum caa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum faa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum gaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum haa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum iaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum jaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum kaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum laa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum oaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum paa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum qaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum taa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

.field public static final enum uaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v1, 0x0

    const-string v2, "EVENT_REFRESH"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v2, 0x1

    const-string v3, "EVENT_UPDATE_ITEM_TABLE"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v3, 0x2

    const-string v4, "EVENT_UPDATE_ITEM"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v4, 0x3

    const-string v5, "EVENT_UPDATE_PAGE"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->XZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v5, 0x4

    const-string v6, "EVENT_CLEAR_LOCK_PAGE"

    invoke-direct {v0, v6, v5}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->YZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v6, 0x5

    const-string v7, "EVENT_UPDATE_ICON"

    invoke-direct {v0, v7, v6}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v7, 0x6

    const-string v8, "EVENT_UPDATE_MESSAGE_COUNT"

    invoke-direct {v0, v8, v7}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->_Z:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v8, 0x7

    const-string v9, "EVENT_INSERT_APP"

    invoke-direct {v0, v9, v8}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->aaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v9, 0x8

    const-string v10, "EVENT_REMOVE_APP"

    invoke-direct {v0, v10, v9}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->baa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v10, 0x9

    const-string v11, "EVENT_UPDATE_APP"

    invoke-direct {v0, v11, v10}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->caa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v11, 0xa

    const-string v12, "EVENT_HANDLE_UNINSTALL"

    invoke-direct {v0, v12, v11}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v12, 0xb

    const-string v13, "EVENT_INIT_DATA"

    invoke-direct {v0, v13, v12}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v13, 0xc

    const-string v14, "EVENT_REFRESH_PAGE_TABLE"

    invoke-direct {v0, v14, v13}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->faa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v14, 0xd

    const-string v15, "EVENT_DATA_BACKUP"

    invoke-direct {v0, v15, v14}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->gaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v15, 0xe

    const-string v14, "EVENT_REMOVE_NEW_FLAG_BY_INTENT"

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->haa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_RELOAD_ICONS"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->iaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_SORT_ICON"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->jaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_ROLLBACK"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->kaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_REMOVE_MULTI_APPS"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->laa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_INSTALL_OR_UPDATE_SHORTCUT"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_UNINSTALL_SHORTCUT"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 22
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_USER_PACKAGE_ADDED"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->oaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 23
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_USER_PACKAGE_CHANGED"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->paa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_USER_PACKAGE_REMOVED"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->qaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_CREATE_FOLDER"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 26
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_DELETE_FOLDER"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 27
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_GO_INTO_FOLDER"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->taa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const-string v14, "EVENT_GO_OUT_FOLDER"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->uaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 29
    sget-object v14, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->UZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v14, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->VZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->WZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->XZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->YZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->ZZ:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->_Z:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->aaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->baa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v9

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->caa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v10

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->daa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v11

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->eaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v12

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->faa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    aput-object v1, v0, v13

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->gaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->haa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->iaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->jaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->kaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->laa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->oaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->paa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->qaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->raa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->saa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->taa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->uaa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->$VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->$VALUES:[Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    return-object v0
.end method
