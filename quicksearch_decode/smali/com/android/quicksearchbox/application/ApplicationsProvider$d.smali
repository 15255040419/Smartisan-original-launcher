.class public Lcom/android/quicksearchbox/application/ApplicationsProvider$d;
.super Ljava/lang/Object;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/application/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10002b

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->a:Ljava/lang/String;

    const v0, 0x7f10002f

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->b:Ljava/lang/String;

    const v0, 0x7f100030

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->c:Ljava/lang/String;

    const v0, 0x7f10002d

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->d:Ljava/lang/String;

    const v0, 0x7f100029

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->e:Ljava/lang/String;

    const v0, 0x7f10002e

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->f:Ljava/lang/String;

    const v0, 0x7f10002a

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->g:Ljava/lang/String;

    const v0, 0x7f10002c

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->h:Ljava/lang/String;

    const v0, 0x7f100031

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->i:Ljava/lang/String;

    .line 11
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->a:Ljava/lang/String;

    const-string v1, "com.android.email"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->b:Ljava/lang/String;

    const-string v1, "com.android.mms"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->c:Ljava/lang/String;

    const-string v1, "com.smartisanos.notes"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->d:Ljava/lang/String;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->e:Ljava/lang/String;

    const-string v1, "com.android.camera2"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->f:Ljava/lang/String;

    const-string v1, "com.smartisanos.gamestore"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->g:Ljava/lang/String;

    const-string v1, "com.smartisanos.clock"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->h:Ljava/lang/String;

    const-string v1, "com.smartisanos.filemanager"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object p0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->j:Ljava/util/HashMap;

    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->i:Ljava/lang/String;

    const-string v1, "com.smartisanos.security"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
