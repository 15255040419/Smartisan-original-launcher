.class abstract enum Lcom/google/common/io/Files$FilePredicate;
.super Ljava/lang/Enum;
.source "Files.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "FilePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/Files$FilePredicate;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_FILE:Lcom/google/common/io/Files$FilePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 914
    new-instance v0, Lcom/google/common/io/Files$FilePredicate$1;

    const/4 v1, 0x0

    const-string v2, "IS_DIRECTORY"

    invoke-direct {v0, v2, v1}, Lcom/google/common/io/Files$FilePredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    .line 926
    new-instance v0, Lcom/google/common/io/Files$FilePredicate$2;

    const/4 v2, 0x1

    const-string v3, "IS_FILE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/io/Files$FilePredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/io/Files$FilePredicate;

    .line 913
    sget-object v3, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 913
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V
    .locals 0

    .line 913
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/Files$FilePredicate;
    .locals 1

    .line 913
    const-class v0, Lcom/google/common/io/Files$FilePredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/Files$FilePredicate;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/Files$FilePredicate;
    .locals 1

    .line 913
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    invoke-virtual {v0}, [Lcom/google/common/io/Files$FilePredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/Files$FilePredicate;

    return-object v0
.end method
