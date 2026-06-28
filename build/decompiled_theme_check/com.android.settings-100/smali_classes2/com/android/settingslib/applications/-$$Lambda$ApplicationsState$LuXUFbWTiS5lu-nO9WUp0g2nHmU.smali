.class public final synthetic Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/applications/ApplicationsState;

.field private final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-object p2, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p3, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/applications/ApplicationsState;->lambda$requestSize$0$ApplicationsState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    return-void
.end method
