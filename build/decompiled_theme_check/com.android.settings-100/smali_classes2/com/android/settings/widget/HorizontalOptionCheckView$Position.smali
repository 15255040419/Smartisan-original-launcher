.class public final enum Lcom/android/settings/widget/HorizontalOptionCheckView$Position;
.super Ljava/lang/Enum;
.source "HorizontalOptionCheckView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/HorizontalOptionCheckView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/HorizontalOptionCheckView$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

.field public static final enum LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

.field public static final enum MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

.field public static final enum RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    new-instance v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    const/4 v2, 0x1

    const-string v3, "MIDDLE"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    new-instance v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    .line 34
    sget-object v4, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->LEFT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->MIDDLE:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->RIGHT:Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->$VALUES:[Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/HorizontalOptionCheckView$Position;
    .locals 1

    .line 34
    const-class v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/HorizontalOptionCheckView$Position;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->$VALUES:[Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    invoke-virtual {v0}, [Lcom/android/settings/widget/HorizontalOptionCheckView$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/HorizontalOptionCheckView$Position;

    return-object v0
.end method
